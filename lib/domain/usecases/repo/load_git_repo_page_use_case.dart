import 'dart:isolate' show Isolate;

import 'package:gh_repo_search/api/repositories/git_repo_repository.dart';
import 'package:gh_repo_search/domain/models/git_repo_model.dart';
import 'package:gh_repo_search/domain/models/list_info.dart';

class LoadGitRepoPageUseCase {
  LoadGitRepoPageUseCase(this._gitRepoRepository);

  final GitRepoRepository _gitRepoRepository;

  Future<ListInfo<GitRepoSMModel>> invoke({required ListInfo<GitRepoSMModel> listInfo, required int page}) async {
    return await Isolate.run(() async {
      final newItems = await _gitRepoRepository.getListPage(query: listInfo.query, page: page);

      if (newItems.isEmpty) {
        return listInfo.copyWith(isError: true);
      }

      return listInfo.copyWith(items: [...listInfo.items, ...newItems], currPage: page, isError: false);
    });
  }
}
