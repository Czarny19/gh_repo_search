import 'package:dio/dio.dart' show Dio, RequestOptions, Response, DioException;
import 'package:flutter_test/flutter_test.dart';
import 'package:gh_repo_search/api/constants/api.dart' as api;
import 'package:gh_repo_search/domain/repositories/git_repo_repository.dart';
import 'package:gh_repo_search/domain/usecases/repo/load_git_repo_list_use_case.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../utils/test_utils.dart';
import 'load_git_repo_list_use_case_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  late MockDio mockDio;

  late GitRepoRepository gitRepoRepository;
  late LoadGitRepoListUseCase useCase;

  group(LoadGitRepoListUseCase, () {
    setUp(() {
      mockDio = MockDio();
      gitRepoRepository = GitRepoRepository(mockDio);
      useCase = LoadGitRepoListUseCase(gitRepoRepository);
    });

    test('No search results', () async {
      when(
        mockDio.get(
          api.epRepoSearch,
          queryParameters: {'q': 'test', 'sort': 'stars', 'per_page': api.listPageSize, 'page': 1},
        ),
      ).thenAnswer((realInvocation) async {
        final json = await TestUtils.loadJsonFile('repo_list_empty');
        return Response(data: json, requestOptions: RequestOptions(), statusCode: 200);
      });

      final (listInfo, items) = await useCase.invoke(query: 'test', page: 1);

      expect(listInfo.isError, false);
      expect(listInfo.currPage, 1);
      expect(listInfo.query, 'test');
      expect(listInfo.isLoadingNextPage, false);
      expect(items.length, 0);
    });

    test('Error result', () async {
      when(
        mockDio.get(
          api.epRepoSearch,
          queryParameters: {'q': 'test', 'sort': 'stars', 'per_page': api.listPageSize, 'page': 1},
        ),
      ).thenAnswer((realInvocation) async {
        throw DioException(requestOptions: RequestOptions());
      });

      final (listInfo, items) = await useCase.invoke(query: 'test', page: 1);

      expect(listInfo.isError, true);
      expect(items.length, 0);
    });

    test('Initial repo load', () async {
      when(
        mockDio.get(
          api.epRepoSearch,
          queryParameters: {'q': 'test', 'sort': 'stars', 'per_page': api.listPageSize, 'page': 1},
        ),
      ).thenAnswer((realInvocation) async {
        final json = await TestUtils.loadJsonFile('repo_list_page_1');
        return Response(data: json, requestOptions: RequestOptions(), statusCode: 200);
      });

      final (listInfo, items) = await useCase.invoke(query: 'test', page: 1);

      expect(listInfo.totalPages, 2083);
      expect(listInfo.isError, false);
      expect(listInfo.currPage, 1);
      expect(listInfo.query, 'test');
      expect(listInfo.isLoadingNextPage, false);
      expect(items.length, 20);
    });
  });
}
