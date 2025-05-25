// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RepoListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepoListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RepoListEvent()';
}


}

/// @nodoc
class $RepoListEventCopyWith<$Res>  {
$RepoListEventCopyWith(RepoListEvent _, $Res Function(RepoListEvent) __);
}


/// @nodoc


class _RepoListSearch implements RepoListEvent {
  const _RepoListSearch(this.query);
  

 final  String query;

/// Create a copy of RepoListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RepoListSearchCopyWith<_RepoListSearch> get copyWith => __$RepoListSearchCopyWithImpl<_RepoListSearch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RepoListSearch&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'RepoListEvent.search(query: $query)';
}


}

/// @nodoc
abstract mixin class _$RepoListSearchCopyWith<$Res> implements $RepoListEventCopyWith<$Res> {
  factory _$RepoListSearchCopyWith(_RepoListSearch value, $Res Function(_RepoListSearch) _then) = __$RepoListSearchCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$RepoListSearchCopyWithImpl<$Res>
    implements _$RepoListSearchCopyWith<$Res> {
  __$RepoListSearchCopyWithImpl(this._self, this._then);

  final _RepoListSearch _self;
  final $Res Function(_RepoListSearch) _then;

/// Create a copy of RepoListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_RepoListSearch(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RepoListClear implements RepoListEvent {
  const _RepoListClear();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RepoListClear);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RepoListEvent.clear()';
}


}




/// @nodoc


class _RepoListRefresh implements RepoListEvent {
  const _RepoListRefresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RepoListRefresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RepoListEvent.refresh()';
}


}




/// @nodoc


class _RepoListNextPage implements RepoListEvent {
  const _RepoListNextPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RepoListNextPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RepoListEvent.loadNextPage()';
}


}




/// @nodoc
mixin _$RepoListState {

 RepoListStatus get status; ListInfo<GitRepoSMModel> get listInfo;
/// Create a copy of RepoListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RepoListStateCopyWith<RepoListState> get copyWith => _$RepoListStateCopyWithImpl<RepoListState>(this as RepoListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RepoListState&&(identical(other.status, status) || other.status == status)&&(identical(other.listInfo, listInfo) || other.listInfo == listInfo));
}


@override
int get hashCode => Object.hash(runtimeType,status,listInfo);

@override
String toString() {
  return 'RepoListState(status: $status, listInfo: $listInfo)';
}


}

/// @nodoc
abstract mixin class $RepoListStateCopyWith<$Res>  {
  factory $RepoListStateCopyWith(RepoListState value, $Res Function(RepoListState) _then) = _$RepoListStateCopyWithImpl;
@useResult
$Res call({
 RepoListStatus status, ListInfo<GitRepoSMModel> listInfo
});


$ListInfoCopyWith<GitRepoSMModel, $Res> get listInfo;

}
/// @nodoc
class _$RepoListStateCopyWithImpl<$Res>
    implements $RepoListStateCopyWith<$Res> {
  _$RepoListStateCopyWithImpl(this._self, this._then);

  final RepoListState _self;
  final $Res Function(RepoListState) _then;

/// Create a copy of RepoListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? listInfo = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RepoListStatus,listInfo: null == listInfo ? _self.listInfo : listInfo // ignore: cast_nullable_to_non_nullable
as ListInfo<GitRepoSMModel>,
  ));
}
/// Create a copy of RepoListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListInfoCopyWith<GitRepoSMModel, $Res> get listInfo {
  
  return $ListInfoCopyWith<GitRepoSMModel, $Res>(_self.listInfo, (value) {
    return _then(_self.copyWith(listInfo: value));
  });
}
}


/// @nodoc


class _RepoListState implements RepoListState {
  const _RepoListState({this.status = RepoListStatus.start, this.listInfo = const ListInfo(query: '', currPage: 1, totalPages: 1, items: [])});
  

@override@JsonKey() final  RepoListStatus status;
@override@JsonKey() final  ListInfo<GitRepoSMModel> listInfo;

/// Create a copy of RepoListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RepoListStateCopyWith<_RepoListState> get copyWith => __$RepoListStateCopyWithImpl<_RepoListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RepoListState&&(identical(other.status, status) || other.status == status)&&(identical(other.listInfo, listInfo) || other.listInfo == listInfo));
}


@override
int get hashCode => Object.hash(runtimeType,status,listInfo);

@override
String toString() {
  return 'RepoListState(status: $status, listInfo: $listInfo)';
}


}

/// @nodoc
abstract mixin class _$RepoListStateCopyWith<$Res> implements $RepoListStateCopyWith<$Res> {
  factory _$RepoListStateCopyWith(_RepoListState value, $Res Function(_RepoListState) _then) = __$RepoListStateCopyWithImpl;
@override @useResult
$Res call({
 RepoListStatus status, ListInfo<GitRepoSMModel> listInfo
});


@override $ListInfoCopyWith<GitRepoSMModel, $Res> get listInfo;

}
/// @nodoc
class __$RepoListStateCopyWithImpl<$Res>
    implements _$RepoListStateCopyWith<$Res> {
  __$RepoListStateCopyWithImpl(this._self, this._then);

  final _RepoListState _self;
  final $Res Function(_RepoListState) _then;

/// Create a copy of RepoListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? listInfo = null,}) {
  return _then(_RepoListState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RepoListStatus,listInfo: null == listInfo ? _self.listInfo : listInfo // ignore: cast_nullable_to_non_nullable
as ListInfo<GitRepoSMModel>,
  ));
}

/// Create a copy of RepoListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListInfoCopyWith<GitRepoSMModel, $Res> get listInfo {
  
  return $ListInfoCopyWith<GitRepoSMModel, $Res>(_self.listInfo, (value) {
    return _then(_self.copyWith(listInfo: value));
  });
}
}

// dart format on
