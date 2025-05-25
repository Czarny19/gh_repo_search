import 'package:freezed_annotation/freezed_annotation.dart';

part 'git_repo_model.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class GitRepoSMModel with _$GitRepoSMModel {
  const GitRepoSMModel._();

  const factory GitRepoSMModel({
    required int id,
    required String fullName,
    required String description,
    required String owner,
    required String ownerAvatarUrl,
    required String updatedAt,
    required String language,
    required int stars,
  }) = _GitRepoSMModel;

  factory GitRepoSMModel.fromJson(Map<String, dynamic> json) => GitRepoSMModel(
    id: json['id'],
    fullName: json['full_name'],
    description: json['description'] ?? '',
    owner: json['owner']?['login'],
    ownerAvatarUrl: json['owner']?['avatar_url'] ?? '',
    updatedAt: json['updated_at'],
    language: json['language'] ?? '',
    stars: json['stargazers_count'] ?? 0,
  );
}

@Freezed(fromJson: false, toJson: false)
abstract class GitRepoModel with _$GitRepoModel {
  const factory GitRepoModel({
    required int id,
    required String fullName,
    required String description,
    required String owner,
    required String ownerAvatarUrl,
    required String createdAt,
    required String updatedAt,
    required String language,
    required int forks,
    required int openIssues,
    required int stars,
    required int watchers,
    required String repoHtmlUrl
  }) = _GitRepoModel;

  factory GitRepoModel.fromJson(Map<String, dynamic> json) => GitRepoModel(
    id: json['id'],
    fullName: json['full_name'],
    description: json['description'] ?? '',
    owner: json['owner']?['login'],
    ownerAvatarUrl: json['owner']?['avatar_url'] ?? '',
    createdAt: json['created_at'],
    updatedAt: json['updated_at'],
    language: json['language'] ?? '',
    forks: json['forks_count'] ?? 0,
    openIssues: json['open_issues'] ?? 0,
    stars: json['stargazers_count'] ?? 0,
    watchers: json['subscribers_count'] ?? 0,
    repoHtmlUrl: json['html_url']
  );
}
