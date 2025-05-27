import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gh_repo_search/domain/repositories/git_repo_repository.dart';
import 'package:gh_repo_search/domain/models/git_repo_issue_model.dart';
import 'package:gh_repo_search/domain/models/git_repo_model.dart';
import 'package:gh_repo_search/domain/usecases/repo/load_git_repo_issues_use_case.dart';
import 'package:gh_repo_search/domain/usecases/repo/load_git_repo_use_case.dart';

part 'repo_details_cubit.freezed.dart';

part 'repo_details_state.dart';

class RepoDetailsCubit extends Cubit<RepoDetailsState> {
  RepoDetailsCubit(GitRepoRepository gitRepoRepository, {required String fullName}) : super(const RepoDetailsState()) {
    _loadGitRepoUseCase = LoadGitRepoUseCase(gitRepoRepository);
    _loadGitRepoIssuesUseCase = LoadGitRepoIssuesUseCase(gitRepoRepository);

    _init(fullName);
  }

  late final LoadGitRepoUseCase _loadGitRepoUseCase;
  late final LoadGitRepoIssuesUseCase _loadGitRepoIssuesUseCase;

  Future<void> _init(String fullName) async {
    final repo = await _loadGitRepoUseCase.invoke(fullName: fullName);

    if (repo == null) {
      emit(state.copyWith(status: RepoDetailsStatus.error, loadingIssues: false));
      return;
    }

    emit(state.copyWith(status: RepoDetailsStatus.view, item: repo));

    _loadIssues(fullName);
  }

  Future<void> _loadIssues(String fullName) async {
    final issues = await _loadGitRepoIssuesUseCase.invoke(fullName: fullName);

    if (!isClosed) {
      emit(state.copyWith(loadingIssues: false, issues: issues));
    }
  }

  void switchTab(int tab) {
    emit(state.copyWith(tab: tab));
  }
}
