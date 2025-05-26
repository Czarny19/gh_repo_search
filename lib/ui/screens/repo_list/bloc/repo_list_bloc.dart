import 'package:flutter_bloc/flutter_bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gh_repo_search/api/repositories/git_repo_repository.dart';
import 'package:gh_repo_search/domain/models/git_repo_model.dart';
import 'package:gh_repo_search/domain/models/list_info.dart';
import 'package:gh_repo_search/domain/usecases/repo/load_git_repo_list_use_case.dart';
import 'package:gh_repo_search/domain/usecases/repo/load_git_repo_page_use_case.dart';
import 'package:gh_repo_search/mixins/transformers.dart';

part 'repo_list_bloc.freezed.dart';

part 'repo_list_event.dart';

part 'repo_list_state.dart';

class RepoListBloc extends Bloc<RepoListEvent, RepoListState> with Transformers {
  RepoListBloc(GitRepoRepository gitRepoRepository) : super(RepoListState()) {
    _loadGitRepoListUseCase = LoadGitRepoListUseCase(gitRepoRepository);
    _loadGitRepoPageUseCase = LoadGitRepoPageUseCase(gitRepoRepository);

    on<_RepoListSearch>(_search, transformer: debounceTransformer(const Duration(seconds: 1)));
    on<_RepoListClear>(_clear);
    on<_RepoListRefresh>(_refresh);
    on<_RepoListNextPage>(_loadNextPage);
  }

  late final LoadGitRepoListUseCase _loadGitRepoListUseCase;
  late final LoadGitRepoPageUseCase _loadGitRepoPageUseCase;

  Future<void> _search(_RepoListSearch event, Emitter<RepoListState> emit) async {
    emit(state.copyWith(status: RepoListStatus.loading));

    if (event.query.isEmpty) {
      emit(state.copyWith(status: RepoListStatus.start));
      return;
    }

    final listInfo = await _loadGitRepoListUseCase.invoke(query: event.query, page: 1);

    if (listInfo.items.isEmpty) {
      emit(state.copyWith(status: RepoListStatus.empty));
      return;
    }

    emit(state.copyWith(status: RepoListStatus.list, listInfo: listInfo));
  }

  Future<void> _clear(_RepoListClear event, Emitter<RepoListState> emit) async {
    emit(state.copyWith(status: RepoListStatus.start, listInfo: ListInfo.empty()));
  }

  Future<void> _refresh(_RepoListRefresh event, Emitter<RepoListState> emit) async {
    if (state.status != RepoListStatus.list || state.listInfo.isLoadingNextPage) {
      return;
    }

    emit(state.copyWith(status: RepoListStatus.loading));

    final listInfo = await _loadGitRepoListUseCase.invoke(query: state.listInfo.query, page: 1);

    if (listInfo.items.isEmpty) {
      emit(state.copyWith(status: RepoListStatus.empty));
      return;
    }

    emit(state.copyWith(status: RepoListStatus.list, listInfo: listInfo));
  }

  Future<void> _loadNextPage(_RepoListNextPage event, Emitter<RepoListState> emit) async {
    emit(state.copyWith(listInfo: state.listInfo.copyWith(isLoadingNextPage: true)));
    final listInfo = await _loadGitRepoPageUseCase.invoke(listInfo: state.listInfo, page: state.listInfo.currPage + 1);
    emit(state.copyWith(status: RepoListStatus.list, listInfo: listInfo.copyWith(isLoadingNextPage: false)));
  }
}
