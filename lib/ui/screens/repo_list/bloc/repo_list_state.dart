part of 'repo_list_bloc.dart';

enum RepoListStatus { start, loading, list, empty }

@freezed
abstract class RepoListState with _$RepoListState {
  const factory RepoListState({
    @Default(RepoListStatus.start) RepoListStatus status,
    @Default([]) List<GitRepoSMModel> items,
    @Default(ListInfo()) ListInfo listInfo,
  }) = _RepoListState;
}
