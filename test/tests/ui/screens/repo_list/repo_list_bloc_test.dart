import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gh_repo_search/api/repositories/git_repo_repository.dart';
import 'package:gh_repo_search/domain/models/git_repo_model.dart';
import 'package:gh_repo_search/domain/models/list_info.dart';
import 'package:gh_repo_search/ui/screens/repo_list/bloc/repo_list_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'repo_list_bloc_test.mocks.dart';

@GenerateMocks([GitRepoRepository])
void main() {
  group(RepoListBloc, () {
    late GitRepoRepository mockGitRepoRepository;

    late List<GitRepoSMModel> testModels;
    late List<GitRepoSMModel> testModels2;

    setUp(() {
      mockGitRepoRepository = MockGitRepoRepository();

      testModels = [
        GitRepoSMModel(
          id: 1,
          fullName: 'test',
          description: 'desc',
          owner: 'owner',
          ownerAvatarUrl: 'ownerAvatarUrl',
          updatedAt: 'updatedAt',
          language: 'language',
          stars: 3,
        ),
        GitRepoSMModel(
          id: 2,
          fullName: 'test2',
          description: 'desc2',
          owner: 'owner2',
          ownerAvatarUrl: 'ownerAvatarUrl2',
          updatedAt: 'updatedAt2',
          language: 'language2',
          stars: 40,
        ),
      ];

      testModels2 = [
        GitRepoSMModel(
          id: 3,
          fullName: 'test3',
          description: 'desc3',
          owner: 'owner3',
          ownerAvatarUrl: 'ownerAvatarUrl3',
          updatedAt: 'updatedAt3',
          language: 'language3',
          stars: 50,
        ),
      ];

      when(mockGitRepoRepository.getList(query: 'test', page: 1)).thenAnswer((realInvocation) async {
        return (ListInfo(currPage: 1, query: 'test', totalPages: 2), testModels);
      });

      when(mockGitRepoRepository.getList(query: 'testEmpty', page: 1)).thenAnswer((realInvocation) async {
        return (ListInfo(currPage: 1, query: 'testEmpty', totalPages: 0), <GitRepoSMModel>[]);
      });

      when(mockGitRepoRepository.getListPage(query: 'test', page: 2)).thenAnswer((realInvocation) async {
        return testModels2;
      });
    });

    test('initial state', () {
      final state = RepoListBloc(mockGitRepoRepository).state;
      expect(state.status, RepoListStatus.start);
      expect(state.listInfo, ListInfo(query: '', currPage: 1, totalPages: 1));
      expect(state.items, <GitRepoSMModel>[]);
    });

    blocTest<RepoListBloc, RepoListState>(
      'search for repos with empty query',
      build: () => RepoListBloc(mockGitRepoRepository),
      act: (bloc) => bloc.add(RepoListEvent.search('')),
      expect: () {
        return [RepoListState(status: RepoListStatus.loading), RepoListState(status: RepoListStatus.start)];
      },
    );

    blocTest<RepoListBloc, RepoListState>(
      'refresh list with empty query',
      build: () => RepoListBloc(mockGitRepoRepository),
      seed: () => RepoListState(status: RepoListStatus.start),
      act: (bloc) => bloc.add(RepoListEvent.refresh()),
      expect: () => [],
    );

    blocTest<RepoListBloc, RepoListState>(
      'search for repos with query returning no results',
      build: () => RepoListBloc(mockGitRepoRepository),
      act: (bloc) => bloc.add(RepoListEvent.search('testEmpty')),
      expect: () {
        return [RepoListState(status: RepoListStatus.loading), RepoListState(status: RepoListStatus.empty)];
      },
    );

    blocTest<RepoListBloc, RepoListState>(
      'refresh list with query returning no results',
      build: () => RepoListBloc(mockGitRepoRepository),
      seed: () => RepoListState(status: RepoListStatus.empty),
      act: (bloc) => bloc.add(RepoListEvent.refresh()),
      expect: () => [],
    );

    blocTest<RepoListBloc, RepoListState>(
      'search for repos with non empty query',
      build: () => RepoListBloc(mockGitRepoRepository),
      wait: const Duration(seconds: 1),
      act: (bloc) => bloc.add(RepoListEvent.search('test')),
      expect: () {
        return [
          RepoListState(status: RepoListStatus.loading),
          RepoListState(
            status: RepoListStatus.list,
            listInfo: ListInfo(currPage: 1, totalPages: 2, query: 'test'),
            items: testModels,
          ),
        ];
      },
    );

    blocTest<RepoListBloc, RepoListState>(
      'refresh list with non empty query',
      build: () => RepoListBloc(mockGitRepoRepository),
      wait: const Duration(seconds: 1),
      seed: () {
        return RepoListState(
          status: RepoListStatus.list,
          listInfo: ListInfo(currPage: 1, totalPages: 2, query: 'test'),
          items: testModels,
        );
      },
      act: (bloc) => bloc.add(RepoListEvent.refresh()),
      expect: () {
        return [
          RepoListState(
            status: RepoListStatus.loading,
            listInfo: ListInfo(currPage: 1, totalPages: 2, query: 'test'),
            items: testModels,
          ),
          RepoListState(
            status: RepoListStatus.list,
            listInfo: ListInfo(currPage: 1, totalPages: 2, query: 'test'),
            items: testModels,
          ),
        ];
      },
    );

    blocTest<RepoListBloc, RepoListState>(
      'load next list page',
      build: () => RepoListBloc(mockGitRepoRepository),
      wait: const Duration(seconds: 1),
      seed: () {
        return RepoListState(
          status: RepoListStatus.list,
          listInfo: ListInfo(currPage: 1, totalPages: 2, query: 'test'),
          items: testModels,
        );
      },
      act: (bloc) => bloc.add(RepoListEvent.loadNextPage()),
      expect: () {
        return [
          RepoListState(
            status: RepoListStatus.list,
            listInfo: ListInfo(currPage: 1, totalPages: 2, query: 'test', isLoadingNextPage: true),
            items: testModels,
          ),
          RepoListState(
            status: RepoListStatus.list,
            listInfo: ListInfo(currPage: 2, totalPages: 2, query: 'test', isLoadingNextPage: false),
            items: [...testModels, ...testModels2],
          ),
        ];
      },
    );

    blocTest<RepoListBloc, RepoListState>(
      'clear search query',
      build: () => RepoListBloc(mockGitRepoRepository),
      seed: () {
        return RepoListState(
          status: RepoListStatus.list,
          listInfo: ListInfo(currPage: 1, totalPages: 2, query: 'test'),
          items: testModels,
        );
      },
      act: (bloc) => bloc.add(RepoListEvent.clear()),
      expect: () => [RepoListState(status: RepoListStatus.start, listInfo: ListInfo())],
    );
  });
}
