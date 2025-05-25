part of 'repo_list_bloc.dart';

@freezed
abstract class RepoListEvent with _$RepoListEvent {
  const factory RepoListEvent.search(String query) = _RepoListSearch;

  const factory RepoListEvent.clear() = _RepoListClear;

  const factory RepoListEvent.refresh() = _RepoListRefresh;

  const factory RepoListEvent.loadNextPage() = _RepoListNextPage;
}
