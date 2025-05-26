import 'package:dio/dio.dart' show Dio, RequestOptions, Response, DioException;
import 'package:flutter_test/flutter_test.dart';
import 'package:gh_repo_search/api/constants/api.dart' as api;
import 'package:gh_repo_search/api/repositories/git_repo_repository.dart';
import 'package:gh_repo_search/domain/models/git_repo_model.dart';
import 'package:gh_repo_search/domain/models/list_info.dart';
import 'package:gh_repo_search/domain/usecases/repo/load_git_repo_page_use_case.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../utils/test_utils.dart';
import 'load_git_repo_page_use_case_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  late MockDio mockDio;

  late GitRepoRepository gitRepoRepository;
  late LoadGitRepoPageUseCase useCase;
  late GitRepoSMModel testItem;

  group(LoadGitRepoPageUseCase, () {
    setUp(() {
      mockDio = MockDio();
      gitRepoRepository = GitRepoRepository(mockDio);
      useCase = LoadGitRepoPageUseCase(gitRepoRepository);
      testItem = GitRepoSMModel(
        id: 1,
        fullName: 'test',
        description: 'test',
        owner: 'testOwner',
        ownerAvatarUrl: 'testUrl',
        updatedAt: '',
        language: 'Java',
        stars: 100,
      );
    });

    test('Error result', () async {
      when(
        mockDio.get(
          api.epRepoSearch,
          queryParameters: {'q': 'test', 'sort': 'stars', 'per_page': api.listPageSize, 'page': 2},
        ),
      ).thenAnswer((realInvocation) async {
        throw DioException(requestOptions: RequestOptions());
      });

      final (listInfo, items) = await useCase.invoke(
        listInfo: ListInfo().copyWith(query: 'test'),
        items: [testItem],
        page: 2,
      );

      expect(listInfo.isError, true);
      expect(items.length, 0);
    });

    test('Repo load next page', () async {
      when(
        mockDio.get(
          api.epRepoSearch,
          queryParameters: {'q': 'test', 'sort': 'stars', 'per_page': api.listPageSize, 'page': 2},
        ),
      ).thenAnswer((realInvocation) async {
        final json = await TestUtils.loadJsonFile('repo_list_page_2');
        return Response(data: json, requestOptions: RequestOptions(), statusCode: 200);
      });

      final (listInfo, items) = await useCase.invoke(
        listInfo: ListInfo().copyWith(query: 'test'),
        items: [testItem],
        page: 2,
      );

      expect(listInfo.isError, false);
      expect(listInfo.currPage, 2);
      expect(listInfo.query, 'test');
      expect(items.length, 21);
    });
  });
}
