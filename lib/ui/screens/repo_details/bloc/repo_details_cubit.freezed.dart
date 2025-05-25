// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RepoDetailsState {

 RepoDetailsStatus get status; int get tab; GitRepoModel? get item; bool get loadingIssues; List<GitRepoIssueModel> get issues;
/// Create a copy of RepoDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RepoDetailsStateCopyWith<RepoDetailsState> get copyWith => _$RepoDetailsStateCopyWithImpl<RepoDetailsState>(this as RepoDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepoDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.tab, tab) || other.tab == tab)&&(identical(other.item, item) || other.item == item)&&(identical(other.loadingIssues, loadingIssues) || other.loadingIssues == loadingIssues)&&const DeepCollectionEquality().equals(other.issues, issues));
}


@override
int get hashCode => Object.hash(runtimeType,status,tab,item,loadingIssues,const DeepCollectionEquality().hash(issues));

@override
String toString() {
  return 'RepoDetailsState(status: $status, tab: $tab, item: $item, loadingIssues: $loadingIssues, issues: $issues)';
}


}

/// @nodoc
abstract mixin class $RepoDetailsStateCopyWith<$Res>  {
  factory $RepoDetailsStateCopyWith(RepoDetailsState value, $Res Function(RepoDetailsState) _then) = _$RepoDetailsStateCopyWithImpl;
@useResult
$Res call({
 RepoDetailsStatus status, int tab, GitRepoModel? item, bool loadingIssues, List<GitRepoIssueModel> issues
});


$GitRepoModelCopyWith<$Res>? get item;

}
/// @nodoc
class _$RepoDetailsStateCopyWithImpl<$Res>
    implements $RepoDetailsStateCopyWith<$Res> {
  _$RepoDetailsStateCopyWithImpl(this._self, this._then);

  final RepoDetailsState _self;
  final $Res Function(RepoDetailsState) _then;

/// Create a copy of RepoDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? tab = null,Object? item = freezed,Object? loadingIssues = null,Object? issues = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RepoDetailsStatus,tab: null == tab ? _self.tab : tab // ignore: cast_nullable_to_non_nullable
as int,item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as GitRepoModel?,loadingIssues: null == loadingIssues ? _self.loadingIssues : loadingIssues // ignore: cast_nullable_to_non_nullable
as bool,issues: null == issues ? _self.issues : issues // ignore: cast_nullable_to_non_nullable
as List<GitRepoIssueModel>,
  ));
}
/// Create a copy of RepoDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GitRepoModelCopyWith<$Res>? get item {
    if (_self.item == null) {
    return null;
  }

  return $GitRepoModelCopyWith<$Res>(_self.item!, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}


/// @nodoc


class _RepoDetailsState implements RepoDetailsState {
  const _RepoDetailsState({this.status = RepoDetailsStatus.loading, this.tab = 0, this.item = null, this.loadingIssues = true, final  List<GitRepoIssueModel> issues = const []}): _issues = issues;
  

@override@JsonKey() final  RepoDetailsStatus status;
@override@JsonKey() final  int tab;
@override@JsonKey() final  GitRepoModel? item;
@override@JsonKey() final  bool loadingIssues;
 final  List<GitRepoIssueModel> _issues;
@override@JsonKey() List<GitRepoIssueModel> get issues {
  if (_issues is EqualUnmodifiableListView) return _issues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_issues);
}


/// Create a copy of RepoDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RepoDetailsStateCopyWith<_RepoDetailsState> get copyWith => __$RepoDetailsStateCopyWithImpl<_RepoDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RepoDetailsState&&(identical(other.status, status) || other.status == status)&&(identical(other.tab, tab) || other.tab == tab)&&(identical(other.item, item) || other.item == item)&&(identical(other.loadingIssues, loadingIssues) || other.loadingIssues == loadingIssues)&&const DeepCollectionEquality().equals(other._issues, _issues));
}


@override
int get hashCode => Object.hash(runtimeType,status,tab,item,loadingIssues,const DeepCollectionEquality().hash(_issues));

@override
String toString() {
  return 'RepoDetailsState(status: $status, tab: $tab, item: $item, loadingIssues: $loadingIssues, issues: $issues)';
}


}

/// @nodoc
abstract mixin class _$RepoDetailsStateCopyWith<$Res> implements $RepoDetailsStateCopyWith<$Res> {
  factory _$RepoDetailsStateCopyWith(_RepoDetailsState value, $Res Function(_RepoDetailsState) _then) = __$RepoDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 RepoDetailsStatus status, int tab, GitRepoModel? item, bool loadingIssues, List<GitRepoIssueModel> issues
});


@override $GitRepoModelCopyWith<$Res>? get item;

}
/// @nodoc
class __$RepoDetailsStateCopyWithImpl<$Res>
    implements _$RepoDetailsStateCopyWith<$Res> {
  __$RepoDetailsStateCopyWithImpl(this._self, this._then);

  final _RepoDetailsState _self;
  final $Res Function(_RepoDetailsState) _then;

/// Create a copy of RepoDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? tab = null,Object? item = freezed,Object? loadingIssues = null,Object? issues = null,}) {
  return _then(_RepoDetailsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RepoDetailsStatus,tab: null == tab ? _self.tab : tab // ignore: cast_nullable_to_non_nullable
as int,item: freezed == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as GitRepoModel?,loadingIssues: null == loadingIssues ? _self.loadingIssues : loadingIssues // ignore: cast_nullable_to_non_nullable
as bool,issues: null == issues ? _self._issues : issues // ignore: cast_nullable_to_non_nullable
as List<GitRepoIssueModel>,
  ));
}

/// Create a copy of RepoDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GitRepoModelCopyWith<$Res>? get item {
    if (_self.item == null) {
    return null;
  }

  return $GitRepoModelCopyWith<$Res>(_self.item!, (value) {
    return _then(_self.copyWith(item: value));
  });
}
}

// dart format on
