import 'package:dio/dio.dart' show Dio, RequestOptions, Response, DioException;
import 'package:flutter_test/flutter_test.dart';
import 'package:gh_repo_search/api/constants/api.dart' as api;
import 'package:gh_repo_search/api/repositories/git_repo_repository.dart';
import 'package:gh_repo_search/domain/usecases/repo/load_git_repo_issues_use_case.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../utils/test_utils.dart';
import 'load_git_repo_issues_use_case_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  late MockDio mockDio;

  late GitRepoRepository gitRepoRepository;
  late LoadGitRepoIssuesUseCase useCase;

  final repoFullName = 'testRepoName';

  group(LoadGitRepoIssuesUseCase, () {
    setUp(() {
      mockDio = MockDio();
      gitRepoRepository = GitRepoRepository(mockDio);
      useCase = LoadGitRepoIssuesUseCase(gitRepoRepository);
    });

    test('Error result', () async {
      when(mockDio.get('${api.epRepoGet}$repoFullName${api.epRepoGetIssues}')).thenAnswer((realInvocation) async {
        throw DioException(requestOptions: RequestOptions());
      });

      final result = await useCase.invoke(fullName: repoFullName);

      expect(result.isEmpty, true);
    });

    test('Repo issues load', () async {
      when(mockDio.get('${api.epRepoGet}$repoFullName${api.epRepoGetIssues}')).thenAnswer((realInvocation) async {
        final json = await TestUtils.loadJsonFile('repo_issues');
        return Response(data: json, requestOptions: RequestOptions(), statusCode: 200);
      });

      final result = await useCase.invoke(fullName: repoFullName);

      expect(result.length, 30);
      expect(result.first.number, 1784);
    });
  });
}
