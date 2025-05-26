// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListInfo {

 String get query; dynamic get currPage; dynamic get totalPages; bool get isError; bool get isLoadingNextPage;
/// Create a copy of ListInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListInfoCopyWith<ListInfo> get copyWith => _$ListInfoCopyWithImpl<ListInfo>(this as ListInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListInfo&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.currPage, currPage)&&const DeepCollectionEquality().equals(other.totalPages, totalPages)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.isLoadingNextPage, isLoadingNextPage) || other.isLoadingNextPage == isLoadingNextPage));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(currPage),const DeepCollectionEquality().hash(totalPages),isError,isLoadingNextPage);

@override
String toString() {
  return 'ListInfo(query: $query, currPage: $currPage, totalPages: $totalPages, isError: $isError, isLoadingNextPage: $isLoadingNextPage)';
}


}

/// @nodoc
abstract mixin class $ListInfoCopyWith<$Res>  {
  factory $ListInfoCopyWith(ListInfo value, $Res Function(ListInfo) _then) = _$ListInfoCopyWithImpl;
@useResult
$Res call({
 String query, dynamic currPage, dynamic totalPages, bool isError, bool isLoadingNextPage
});




}
/// @nodoc
class _$ListInfoCopyWithImpl<$Res>
    implements $ListInfoCopyWith<$Res> {
  _$ListInfoCopyWithImpl(this._self, this._then);

  final ListInfo _self;
  final $Res Function(ListInfo) _then;

/// Create a copy of ListInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? currPage = freezed,Object? totalPages = freezed,Object? isError = null,Object? isLoadingNextPage = null,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,currPage: freezed == currPage ? _self.currPage : currPage // ignore: cast_nullable_to_non_nullable
as dynamic,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as dynamic,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,isLoadingNextPage: null == isLoadingNextPage ? _self.isLoadingNextPage : isLoadingNextPage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _ListInfo implements ListInfo {
  const _ListInfo({this.query = '', this.currPage = 1, this.totalPages = 1, this.isError = false, this.isLoadingNextPage = false});
  

@override@JsonKey() final  String query;
@override@JsonKey() final  dynamic currPage;
@override@JsonKey() final  dynamic totalPages;
@override@JsonKey() final  bool isError;
@override@JsonKey() final  bool isLoadingNextPage;

/// Create a copy of ListInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListInfoCopyWith<_ListInfo> get copyWith => __$ListInfoCopyWithImpl<_ListInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListInfo&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.currPage, currPage)&&const DeepCollectionEquality().equals(other.totalPages, totalPages)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.isLoadingNextPage, isLoadingNextPage) || other.isLoadingNextPage == isLoadingNextPage));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(currPage),const DeepCollectionEquality().hash(totalPages),isError,isLoadingNextPage);

@override
String toString() {
  return 'ListInfo(query: $query, currPage: $currPage, totalPages: $totalPages, isError: $isError, isLoadingNextPage: $isLoadingNextPage)';
}


}

/// @nodoc
abstract mixin class _$ListInfoCopyWith<$Res> implements $ListInfoCopyWith<$Res> {
  factory _$ListInfoCopyWith(_ListInfo value, $Res Function(_ListInfo) _then) = __$ListInfoCopyWithImpl;
@override @useResult
$Res call({
 String query, dynamic currPage, dynamic totalPages, bool isError, bool isLoadingNextPage
});




}
/// @nodoc
class __$ListInfoCopyWithImpl<$Res>
    implements _$ListInfoCopyWith<$Res> {
  __$ListInfoCopyWithImpl(this._self, this._then);

  final _ListInfo _self;
  final $Res Function(_ListInfo) _then;

/// Create a copy of ListInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? currPage = freezed,Object? totalPages = freezed,Object? isError = null,Object? isLoadingNextPage = null,}) {
  return _then(_ListInfo(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,currPage: freezed == currPage ? _self.currPage : currPage // ignore: cast_nullable_to_non_nullable
as dynamic,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as dynamic,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,isLoadingNextPage: null == isLoadingNextPage ? _self.isLoadingNextPage : isLoadingNextPage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
