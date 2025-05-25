import 'package:dio/dio.dart' show Dio;
import 'package:gh_repo_search/api/constants/api.dart' as api;

class ApiRepository {
  ApiRepository() {
    _dio.options.baseUrl = api.baseUrl;
    _dio.options.connectTimeout = Duration(seconds: 5);
    _dio.options.receiveTimeout = Duration(seconds: 3);
  }

  final Dio _dio = Dio();

  Dio get dio => _dio;
}
