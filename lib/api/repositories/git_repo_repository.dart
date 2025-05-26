import 'package:dio/dio.dart' show Dio;
import 'package:gh_repo_search/api/services/git_repo_service.dart';
import 'package:gh_repo_search/domain/models/git_repo_issue_model.dart';
import 'package:gh_repo_search/domain/models/git_repo_model.dart';
import 'package:gh_repo_search/domain/models/list_info.dart';

class GitRepoRepository {
  GitRepoRepository(Dio dio) {
    _gitRepoService = GitRepoService(dio);
  }

  late final GitRepoService _gitRepoService;

  Future<(ListInfo, List<GitRepoSMModel>)> getList({required String query, required int page}) async =>
      _gitRepoService.getListWithInfo(query, page);

  Future<List<GitRepoSMModel>> getListPage({required String query, required int page}) async =>
      _gitRepoService.getList(query, page);

  Future<GitRepoModel?> getSingle({required String fullName}) async => _gitRepoService.getRepo(fullName);

  Future<List<GitRepoIssueModel>> getIssues({required String fullName}) async =>
      _gitRepoService.getRepoIssues(fullName);
}
