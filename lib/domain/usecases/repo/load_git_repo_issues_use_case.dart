import 'package:gh_repo_search/api/repositories/git_repo_repository.dart';
import 'package:gh_repo_search/domain/models/git_repo_issue_model.dart';

class LoadGitRepoIssuesUseCase {
  LoadGitRepoIssuesUseCase(this._gitRepoRepository);

  final GitRepoRepository _gitRepoRepository;

  Future<List<GitRepoIssueModel>> invoke({required String fullName}) async {
    return _gitRepoRepository.getIssues(fullName: fullName);
  }
}
