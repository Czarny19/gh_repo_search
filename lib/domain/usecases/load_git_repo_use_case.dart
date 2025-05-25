import 'package:gh_repo_search/api/repositories/git_repo_repository.dart';
import 'package:gh_repo_search/domain/models/git_repo_model.dart';

class LoadGitRepoUseCase {
  LoadGitRepoUseCase(this._gitRepoRepository);

  final GitRepoRepository _gitRepoRepository;

  Future<GitRepoModel?> invoke({required String fullName}) async {
    return await _gitRepoRepository.getSingle(fullName: fullName);
  }
}
