import 'package:freezed_annotation/freezed_annotation.dart';

part 'git_repo_issue_model.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class GitRepoIssueModel with _$GitRepoIssueModel {
  const GitRepoIssueModel._();

  const factory GitRepoIssueModel({
    required int id,
    required int number,
    required String title,
    required String body,
    required String user,
    required String userAvatarUrl,
    required String updatedAt,
    required String issueHtmlUrl
  }) = _GitRepoIssueModel;

  factory GitRepoIssueModel.fromJson(Map<String, dynamic> json) => GitRepoIssueModel(
    id: json['id'],
    number: json['number'],
    title: json['title'] ?? '',
    body: json['body'] ?? '',
    user: json['user']?['login'],
    userAvatarUrl: json['user']?['avatar_url'],
    updatedAt: json['updated_at'],
    issueHtmlUrl: json['html_url']
  );
}