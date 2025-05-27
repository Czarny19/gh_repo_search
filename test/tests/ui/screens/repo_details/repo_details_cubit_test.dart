import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gh_repo_search/domain/repositories/git_repo_repository.dart';
import 'package:gh_repo_search/domain/models/git_repo_issue_model.dart';
import 'package:gh_repo_search/domain/models/git_repo_model.dart';
import 'package:gh_repo_search/ui/screens/repo_details/bloc/repo_details_cubit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'repo_details_cubit_test.mocks.dart';

@GenerateMocks([GitRepoRepository])
void main() {
  group(RepoDetailsCubit, () {
    late GitRepoRepository mockGitRepoRepository;

    late GitRepoModel testModel;
    late GitRepoIssueModel testIssuesModel;

    late RepoDetailsCubit repoDetailsCubit;

    setUp(() {
      mockGitRepoRepository = MockGitRepoRepository();

      testModel = GitRepoModel(
        id: 1,
        fullName: 'test',
        description: 'desc',
        owner: 'owner',
        ownerAvatarUrl: 'ownerAvatarUrl',
        createdAt: 'createdAt',
        updatedAt: 'updatedAt',
        language: 'language',
        forks: 1,
        openIssues: 2,
        stars: 3,
        watchers: 4,
        repoHtmlUrl: 'repoHtmlUrl',
      );

      testIssuesModel = GitRepoIssueModel(
        id: 1,
        number: 123,
        title: 'title',
        body: 'body',
        user: 'user',
        userAvatarUrl: 'userAvatarUrl',
        updatedAt: 'updatedAt',
        issueHtmlUrl: 'issueHtmlUrl',
      );

      when(mockGitRepoRepository.getSingle(fullName: 'test')).thenAnswer((realInvocation) async {
        return testModel;
      });

      when(mockGitRepoRepository.getIssues(fullName: 'test')).thenAnswer((realInvocation) async {
        return [testIssuesModel];
      });

      // Cubit loaded in set up for easier testing with loaded initial state (async calls in constructor)
      repoDetailsCubit = RepoDetailsCubit(fullName: 'test', mockGitRepoRepository);
    });

    test('initial state', () {
      final state = RepoDetailsCubit(fullName: 'test', mockGitRepoRepository).state;
      expect(state.status, RepoDetailsStatus.loading);
      expect(state.tab, 0);
      expect(state.item, null);
      expect(state.issues, []);
    });

    blocTest<RepoDetailsCubit, RepoDetailsState>(
      'switch tab',
      build: () => repoDetailsCubit,
      wait: const Duration(seconds: 1),
      act: (bloc) => bloc.switchTab(1),
      expect: () => [RepoDetailsState(
        tab: 1,
        item: testModel,
        issues: [testIssuesModel],
        status: RepoDetailsStatus.view,
        loadingIssues: false,
      ),],
    );

    blocTest<RepoDetailsCubit, RepoDetailsState>(
      'load intial bloc state',
      build: () => RepoDetailsCubit(fullName: 'test', mockGitRepoRepository),
      wait: const Duration(seconds: 1),
      expect: () {
        return [
          RepoDetailsState(tab: 0, item: testModel, issues: [], status: RepoDetailsStatus.view, loadingIssues: true),
          RepoDetailsState(
            tab: 0,
            item: testModel,
            issues: [testIssuesModel],
            status: RepoDetailsStatus.view,
            loadingIssues: false,
          ),
        ];
      },
    );

    blocTest<RepoDetailsCubit, RepoDetailsState>(
      'load intial bloc state with error',
      build: () => RepoDetailsCubit(fullName: 'test', mockGitRepoRepository),
      wait: const Duration(seconds: 1),
      setUp: () {
        when(mockGitRepoRepository.getSingle(fullName: 'test')).thenAnswer((realInvocation) async {
          return null;
        });
      },
      expect: () {
        return [
          RepoDetailsState(tab: 0, item: null, issues: [], status: RepoDetailsStatus.error, loadingIssues: false),
        ];
      },
    );
  });
}
