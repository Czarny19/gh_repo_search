import 'dart:isolate' show Isolate;

import 'package:gh_repo_search/api/repositories/git_repo_repository.dart';
import 'package:gh_repo_search/domain/models/git_repo_model.dart';
import 'package:gh_repo_search/domain/models/list_info.dart';

class LoadGitRepoListUseCase {
  LoadGitRepoListUseCase(this._gitRepoRepository);

  final GitRepoRepository _gitRepoRepository;

  Future<(ListInfo, List<GitRepoSMModel>)> invoke({required String query, required int page}) async {
    return await Isolate.run(() => _gitRepoRepository.getList(query: query, page: page));
  }
}
