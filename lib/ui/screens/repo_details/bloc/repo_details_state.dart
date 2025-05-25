part of 'repo_details_cubit.dart';

enum RepoDetailsStatus { loading, view, error }

@freezed
abstract class RepoDetailsState with _$RepoDetailsState {
  const factory RepoDetailsState({
    @Default(RepoDetailsStatus.loading) RepoDetailsStatus status,
    @Default(0) int tab,
    @Default(null) GitRepoModel? item,
    @Default(true) bool loadingIssues,
    @Default([]) List<GitRepoIssueModel> issues
  }) = _RepoDetailsState;
}