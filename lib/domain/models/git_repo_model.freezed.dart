// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'git_repo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GitRepoSMModel {

 int get id; String get fullName; String get description; String get owner; String get ownerAvatarUrl; String get updatedAt; String get language; int get stars;
/// Create a copy of GitRepoSMModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GitRepoSMModelCopyWith<GitRepoSMModel> get copyWith => _$GitRepoSMModelCopyWithImpl<GitRepoSMModel>(this as GitRepoSMModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GitRepoSMModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.description, description) || other.description == description)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.ownerAvatarUrl, ownerAvatarUrl) || other.ownerAvatarUrl == ownerAvatarUrl)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.language, language) || other.language == language)&&(identical(other.stars, stars) || other.stars == stars));
}


@override
int get hashCode => Object.hash(runtimeType,id,fullName,description,owner,ownerAvatarUrl,updatedAt,language,stars);

@override
String toString() {
  return 'GitRepoSMModel(id: $id, fullName: $fullName, description: $description, owner: $owner, ownerAvatarUrl: $ownerAvatarUrl, updatedAt: $updatedAt, language: $language, stars: $stars)';
}


}

/// @nodoc
abstract mixin class $GitRepoSMModelCopyWith<$Res>  {
  factory $GitRepoSMModelCopyWith(GitRepoSMModel value, $Res Function(GitRepoSMModel) _then) = _$GitRepoSMModelCopyWithImpl;
@useResult
$Res call({
 int id, String fullName, String description, String owner, String ownerAvatarUrl, String updatedAt, String language, int stars
});




}
/// @nodoc
class _$GitRepoSMModelCopyWithImpl<$Res>
    implements $GitRepoSMModelCopyWith<$Res> {
  _$GitRepoSMModelCopyWithImpl(this._self, this._then);

  final GitRepoSMModel _self;
  final $Res Function(GitRepoSMModel) _then;

/// Create a copy of GitRepoSMModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fullName = null,Object? description = null,Object? owner = null,Object? ownerAvatarUrl = null,Object? updatedAt = null,Object? language = null,Object? stars = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String,ownerAvatarUrl: null == ownerAvatarUrl ? _self.ownerAvatarUrl : ownerAvatarUrl // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,stars: null == stars ? _self.stars : stars // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class _GitRepoSMModel extends GitRepoSMModel {
  const _GitRepoSMModel({required this.id, required this.fullName, required this.description, required this.owner, required this.ownerAvatarUrl, required this.updatedAt, required this.language, required this.stars}): super._();
  

@override final  int id;
@override final  String fullName;
@override final  String description;
@override final  String owner;
@override final  String ownerAvatarUrl;
@override final  String updatedAt;
@override final  String language;
@override final  int stars;

/// Create a copy of GitRepoSMModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GitRepoSMModelCopyWith<_GitRepoSMModel> get copyWith => __$GitRepoSMModelCopyWithImpl<_GitRepoSMModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GitRepoSMModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.description, description) || other.description == description)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.ownerAvatarUrl, ownerAvatarUrl) || other.ownerAvatarUrl == ownerAvatarUrl)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.language, language) || other.language == language)&&(identical(other.stars, stars) || other.stars == stars));
}


@override
int get hashCode => Object.hash(runtimeType,id,fullName,description,owner,ownerAvatarUrl,updatedAt,language,stars);

@override
String toString() {
  return 'GitRepoSMModel(id: $id, fullName: $fullName, description: $description, owner: $owner, ownerAvatarUrl: $ownerAvatarUrl, updatedAt: $updatedAt, language: $language, stars: $stars)';
}


}

/// @nodoc
abstract mixin class _$GitRepoSMModelCopyWith<$Res> implements $GitRepoSMModelCopyWith<$Res> {
  factory _$GitRepoSMModelCopyWith(_GitRepoSMModel value, $Res Function(_GitRepoSMModel) _then) = __$GitRepoSMModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String fullName, String description, String owner, String ownerAvatarUrl, String updatedAt, String language, int stars
});




}
/// @nodoc
class __$GitRepoSMModelCopyWithImpl<$Res>
    implements _$GitRepoSMModelCopyWith<$Res> {
  __$GitRepoSMModelCopyWithImpl(this._self, this._then);

  final _GitRepoSMModel _self;
  final $Res Function(_GitRepoSMModel) _then;

/// Create a copy of GitRepoSMModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fullName = null,Object? description = null,Object? owner = null,Object? ownerAvatarUrl = null,Object? updatedAt = null,Object? language = null,Object? stars = null,}) {
  return _then(_GitRepoSMModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String,ownerAvatarUrl: null == ownerAvatarUrl ? _self.ownerAvatarUrl : ownerAvatarUrl // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,stars: null == stars ? _self.stars : stars // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$GitRepoModel {

 int get id; String get fullName; String get description; String get owner; String get ownerAvatarUrl; String get createdAt; String get updatedAt; String get language; int get forks; int get openIssues; int get stars; int get watchers; String get repoHtmlUrl;
/// Create a copy of GitRepoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GitRepoModelCopyWith<GitRepoModel> get copyWith => _$GitRepoModelCopyWithImpl<GitRepoModel>(this as GitRepoModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GitRepoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.description, description) || other.description == description)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.ownerAvatarUrl, ownerAvatarUrl) || other.ownerAvatarUrl == ownerAvatarUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.language, language) || other.language == language)&&(identical(other.forks, forks) || other.forks == forks)&&(identical(other.openIssues, openIssues) || other.openIssues == openIssues)&&(identical(other.stars, stars) || other.stars == stars)&&(identical(other.watchers, watchers) || other.watchers == watchers)&&(identical(other.repoHtmlUrl, repoHtmlUrl) || other.repoHtmlUrl == repoHtmlUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,fullName,description,owner,ownerAvatarUrl,createdAt,updatedAt,language,forks,openIssues,stars,watchers,repoHtmlUrl);

@override
String toString() {
  return 'GitRepoModel(id: $id, fullName: $fullName, description: $description, owner: $owner, ownerAvatarUrl: $ownerAvatarUrl, createdAt: $createdAt, updatedAt: $updatedAt, language: $language, forks: $forks, openIssues: $openIssues, stars: $stars, watchers: $watchers, repoHtmlUrl: $repoHtmlUrl)';
}


}

/// @nodoc
abstract mixin class $GitRepoModelCopyWith<$Res>  {
  factory $GitRepoModelCopyWith(GitRepoModel value, $Res Function(GitRepoModel) _then) = _$GitRepoModelCopyWithImpl;
@useResult
$Res call({
 int id, String fullName, String description, String owner, String ownerAvatarUrl, String createdAt, String updatedAt, String language, int forks, int openIssues, int stars, int watchers, String repoHtmlUrl
});




}
/// @nodoc
class _$GitRepoModelCopyWithImpl<$Res>
    implements $GitRepoModelCopyWith<$Res> {
  _$GitRepoModelCopyWithImpl(this._self, this._then);

  final GitRepoModel _self;
  final $Res Function(GitRepoModel) _then;

/// Create a copy of GitRepoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fullName = null,Object? description = null,Object? owner = null,Object? ownerAvatarUrl = null,Object? createdAt = null,Object? updatedAt = null,Object? language = null,Object? forks = null,Object? openIssues = null,Object? stars = null,Object? watchers = null,Object? repoHtmlUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String,ownerAvatarUrl: null == ownerAvatarUrl ? _self.ownerAvatarUrl : ownerAvatarUrl // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,forks: null == forks ? _self.forks : forks // ignore: cast_nullable_to_non_nullable
as int,openIssues: null == openIssues ? _self.openIssues : openIssues // ignore: cast_nullable_to_non_nullable
as int,stars: null == stars ? _self.stars : stars // ignore: cast_nullable_to_non_nullable
as int,watchers: null == watchers ? _self.watchers : watchers // ignore: cast_nullable_to_non_nullable
as int,repoHtmlUrl: null == repoHtmlUrl ? _self.repoHtmlUrl : repoHtmlUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _GitRepoModel implements GitRepoModel {
  const _GitRepoModel({required this.id, required this.fullName, required this.description, required this.owner, required this.ownerAvatarUrl, required this.createdAt, required this.updatedAt, required this.language, required this.forks, required this.openIssues, required this.stars, required this.watchers, required this.repoHtmlUrl});
  

@override final  int id;
@override final  String fullName;
@override final  String description;
@override final  String owner;
@override final  String ownerAvatarUrl;
@override final  String createdAt;
@override final  String updatedAt;
@override final  String language;
@override final  int forks;
@override final  int openIssues;
@override final  int stars;
@override final  int watchers;
@override final  String repoHtmlUrl;

/// Create a copy of GitRepoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GitRepoModelCopyWith<_GitRepoModel> get copyWith => __$GitRepoModelCopyWithImpl<_GitRepoModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GitRepoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.description, description) || other.description == description)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.ownerAvatarUrl, ownerAvatarUrl) || other.ownerAvatarUrl == ownerAvatarUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.language, language) || other.language == language)&&(identical(other.forks, forks) || other.forks == forks)&&(identical(other.openIssues, openIssues) || other.openIssues == openIssues)&&(identical(other.stars, stars) || other.stars == stars)&&(identical(other.watchers, watchers) || other.watchers == watchers)&&(identical(other.repoHtmlUrl, repoHtmlUrl) || other.repoHtmlUrl == repoHtmlUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,fullName,description,owner,ownerAvatarUrl,createdAt,updatedAt,language,forks,openIssues,stars,watchers,repoHtmlUrl);

@override
String toString() {
  return 'GitRepoModel(id: $id, fullName: $fullName, description: $description, owner: $owner, ownerAvatarUrl: $ownerAvatarUrl, createdAt: $createdAt, updatedAt: $updatedAt, language: $language, forks: $forks, openIssues: $openIssues, stars: $stars, watchers: $watchers, repoHtmlUrl: $repoHtmlUrl)';
}


}

/// @nodoc
abstract mixin class _$GitRepoModelCopyWith<$Res> implements $GitRepoModelCopyWith<$Res> {
  factory _$GitRepoModelCopyWith(_GitRepoModel value, $Res Function(_GitRepoModel) _then) = __$GitRepoModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String fullName, String description, String owner, String ownerAvatarUrl, String createdAt, String updatedAt, String language, int forks, int openIssues, int stars, int watchers, String repoHtmlUrl
});




}
/// @nodoc
class __$GitRepoModelCopyWithImpl<$Res>
    implements _$GitRepoModelCopyWith<$Res> {
  __$GitRepoModelCopyWithImpl(this._self, this._then);

  final _GitRepoModel _self;
  final $Res Function(_GitRepoModel) _then;

/// Create a copy of GitRepoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fullName = null,Object? description = null,Object? owner = null,Object? ownerAvatarUrl = null,Object? createdAt = null,Object? updatedAt = null,Object? language = null,Object? forks = null,Object? openIssues = null,Object? stars = null,Object? watchers = null,Object? repoHtmlUrl = null,}) {
  return _then(_GitRepoModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String,ownerAvatarUrl: null == ownerAvatarUrl ? _self.ownerAvatarUrl : ownerAvatarUrl // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,forks: null == forks ? _self.forks : forks // ignore: cast_nullable_to_non_nullable
as int,openIssues: null == openIssues ? _self.openIssues : openIssues // ignore: cast_nullable_to_non_nullable
as int,stars: null == stars ? _self.stars : stars // ignore: cast_nullable_to_non_nullable
as int,watchers: null == watchers ? _self.watchers : watchers // ignore: cast_nullable_to_non_nullable
as int,repoHtmlUrl: null == repoHtmlUrl ? _self.repoHtmlUrl : repoHtmlUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
