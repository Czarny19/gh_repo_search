// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'git_repo_issue_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GitRepoIssueModel {

 int get id; int get number; String get title; String get body; String get user; String get userAvatarUrl; String get updatedAt; String get issueHtmlUrl;
/// Create a copy of GitRepoIssueModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GitRepoIssueModelCopyWith<GitRepoIssueModel> get copyWith => _$GitRepoIssueModelCopyWithImpl<GitRepoIssueModel>(this as GitRepoIssueModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GitRepoIssueModel&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.user, user) || other.user == user)&&(identical(other.userAvatarUrl, userAvatarUrl) || other.userAvatarUrl == userAvatarUrl)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.issueHtmlUrl, issueHtmlUrl) || other.issueHtmlUrl == issueHtmlUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,number,title,body,user,userAvatarUrl,updatedAt,issueHtmlUrl);

@override
String toString() {
  return 'GitRepoIssueModel(id: $id, number: $number, title: $title, body: $body, user: $user, userAvatarUrl: $userAvatarUrl, updatedAt: $updatedAt, issueHtmlUrl: $issueHtmlUrl)';
}


}

/// @nodoc
abstract mixin class $GitRepoIssueModelCopyWith<$Res>  {
  factory $GitRepoIssueModelCopyWith(GitRepoIssueModel value, $Res Function(GitRepoIssueModel) _then) = _$GitRepoIssueModelCopyWithImpl;
@useResult
$Res call({
 int id, int number, String title, String body, String user, String userAvatarUrl, String updatedAt, String issueHtmlUrl
});




}
/// @nodoc
class _$GitRepoIssueModelCopyWithImpl<$Res>
    implements $GitRepoIssueModelCopyWith<$Res> {
  _$GitRepoIssueModelCopyWithImpl(this._self, this._then);

  final GitRepoIssueModel _self;
  final $Res Function(GitRepoIssueModel) _then;

/// Create a copy of GitRepoIssueModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? number = null,Object? title = null,Object? body = null,Object? user = null,Object? userAvatarUrl = null,Object? updatedAt = null,Object? issueHtmlUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,userAvatarUrl: null == userAvatarUrl ? _self.userAvatarUrl : userAvatarUrl // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,issueHtmlUrl: null == issueHtmlUrl ? _self.issueHtmlUrl : issueHtmlUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _GitRepoIssueModel extends GitRepoIssueModel {
  const _GitRepoIssueModel({required this.id, required this.number, required this.title, required this.body, required this.user, required this.userAvatarUrl, required this.updatedAt, required this.issueHtmlUrl}): super._();
  

@override final  int id;
@override final  int number;
@override final  String title;
@override final  String body;
@override final  String user;
@override final  String userAvatarUrl;
@override final  String updatedAt;
@override final  String issueHtmlUrl;

/// Create a copy of GitRepoIssueModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GitRepoIssueModelCopyWith<_GitRepoIssueModel> get copyWith => __$GitRepoIssueModelCopyWithImpl<_GitRepoIssueModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GitRepoIssueModel&&(identical(other.id, id) || other.id == id)&&(identical(other.number, number) || other.number == number)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.user, user) || other.user == user)&&(identical(other.userAvatarUrl, userAvatarUrl) || other.userAvatarUrl == userAvatarUrl)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.issueHtmlUrl, issueHtmlUrl) || other.issueHtmlUrl == issueHtmlUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,number,title,body,user,userAvatarUrl,updatedAt,issueHtmlUrl);

@override
String toString() {
  return 'GitRepoIssueModel(id: $id, number: $number, title: $title, body: $body, user: $user, userAvatarUrl: $userAvatarUrl, updatedAt: $updatedAt, issueHtmlUrl: $issueHtmlUrl)';
}


}

/// @nodoc
abstract mixin class _$GitRepoIssueModelCopyWith<$Res> implements $GitRepoIssueModelCopyWith<$Res> {
  factory _$GitRepoIssueModelCopyWith(_GitRepoIssueModel value, $Res Function(_GitRepoIssueModel) _then) = __$GitRepoIssueModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int number, String title, String body, String user, String userAvatarUrl, String updatedAt, String issueHtmlUrl
});




}
/// @nodoc
class __$GitRepoIssueModelCopyWithImpl<$Res>
    implements _$GitRepoIssueModelCopyWith<$Res> {
  __$GitRepoIssueModelCopyWithImpl(this._self, this._then);

  final _GitRepoIssueModel _self;
  final $Res Function(_GitRepoIssueModel) _then;

/// Create a copy of GitRepoIssueModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? number = null,Object? title = null,Object? body = null,Object? user = null,Object? userAvatarUrl = null,Object? updatedAt = null,Object? issueHtmlUrl = null,}) {
  return _then(_GitRepoIssueModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,userAvatarUrl: null == userAvatarUrl ? _self.userAvatarUrl : userAvatarUrl // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,issueHtmlUrl: null == issueHtmlUrl ? _self.issueHtmlUrl : issueHtmlUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
