import 'package:dio/dio.dart' show Dio, DioException;
import 'package:gh_repo_search/api/constants/api.dart' as api;
import 'package:gh_repo_search/domain/models/git_repo_issue_model.dart';
import 'package:gh_repo_search/domain/models/git_repo_model.dart';
import 'package:gh_repo_search/domain/models/list_info.dart';

class GitRepoService {
  GitRepoService(this._dio);

  final Dio _dio;

  Future<(ListInfo, List<GitRepoSMModel>)> getListWithInfo(String query, int page) async {
    try {
      final response = await _dio.get(api.epRepoSearch, queryParameters: _buildListQueryParams(query, page));

      final json = response.data as Map<String, dynamic>;
      final items = json['items'].map((item) => GitRepoSMModel.fromJson(item)).whereType<GitRepoSMModel>().toList();
      final totalPages = (double.parse(json['total_count'].toString()) / api.listPageSize).ceil();

      return (ListInfo(currPage: page, totalPages: totalPages, query: query), items as List<GitRepoSMModel>);
    } on DioException catch (_) {
      return (ListInfo(currPage: page, totalPages: 0, query: query, isError: true), <GitRepoSMModel>[]);
    }
  }

  Future<List<GitRepoSMModel>> getList(String query, int page) async {
    try {
      final response = await _dio.get(api.epRepoSearch, queryParameters: _buildListQueryParams(query, page));

      final json = response.data as Map<String, dynamic>;
      return json['items'].map((item) => GitRepoSMModel.fromJson(item)).whereType<GitRepoSMModel>().toList();
    } on DioException catch (_) {
      return [];
    }
  }

  Future<GitRepoModel?> getRepo(String repoFullName) async {
    try {
      final response = await _dio.get('${api.epRepoGet}$repoFullName');

      final json = response.data as Map<String, dynamic>;
      return GitRepoModel.fromJson(json);
    } on DioException catch (_) {
      return null;
    }
  }

  Future<List<GitRepoIssueModel>> getRepoIssues(String repoFullName) async {
    try {
      final response = await _dio.get('${api.epRepoGet}$repoFullName${api.epRepoGetIssues}');

      final json = response.data as List<dynamic>;
      return json.map((item) => GitRepoIssueModel.fromJson(item)).whereType<GitRepoIssueModel>().toList();
    } on DioException catch (_) {
      return [];
    }
  }

  Map<String, dynamic> _buildListQueryParams(String query, int page) => {
    'q': query,
    'sort': 'stars',
    'per_page': api.listPageSize,
    'page': page,
  };
}
