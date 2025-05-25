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
mixin _$ListInfo<T> {

 String get query; int get currPage; int get totalPages; List<T> get items; bool get isError; bool get isLoadingNextPage;
/// Create a copy of ListInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListInfoCopyWith<T, ListInfo<T>> get copyWith => _$ListInfoCopyWithImpl<T, ListInfo<T>>(this as ListInfo<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListInfo<T>&&(identical(other.query, query) || other.query == query)&&(identical(other.currPage, currPage) || other.currPage == currPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.isLoadingNextPage, isLoadingNextPage) || other.isLoadingNextPage == isLoadingNextPage));
}


@override
int get hashCode => Object.hash(runtimeType,query,currPage,totalPages,const DeepCollectionEquality().hash(items),isError,isLoadingNextPage);

@override
String toString() {
  return 'ListInfo<$T>(query: $query, currPage: $currPage, totalPages: $totalPages, items: $items, isError: $isError, isLoadingNextPage: $isLoadingNextPage)';
}


}

/// @nodoc
abstract mixin class $ListInfoCopyWith<T,$Res>  {
  factory $ListInfoCopyWith(ListInfo<T> value, $Res Function(ListInfo<T>) _then) = _$ListInfoCopyWithImpl;
@useResult
$Res call({
 String query, int currPage, int totalPages, List<T> items, bool isError, bool isLoadingNextPage
});




}
/// @nodoc
class _$ListInfoCopyWithImpl<T,$Res>
    implements $ListInfoCopyWith<T, $Res> {
  _$ListInfoCopyWithImpl(this._self, this._then);

  final ListInfo<T> _self;
  final $Res Function(ListInfo<T>) _then;

/// Create a copy of ListInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? currPage = null,Object? totalPages = null,Object? items = null,Object? isError = null,Object? isLoadingNextPage = null,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,currPage: null == currPage ? _self.currPage : currPage // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<T>,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,isLoadingNextPage: null == isLoadingNextPage ? _self.isLoadingNextPage : isLoadingNextPage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _ListInfo<T> extends ListInfo<T> {
  const _ListInfo({required this.query, required this.currPage, required this.totalPages, required final  List<T> items, this.isError = false, this.isLoadingNextPage = false}): _items = items,super._();
  

@override final  String query;
@override final  int currPage;
@override final  int totalPages;
 final  List<T> _items;
@override List<T> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  bool isError;
@override@JsonKey() final  bool isLoadingNextPage;

/// Create a copy of ListInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListInfoCopyWith<T, _ListInfo<T>> get copyWith => __$ListInfoCopyWithImpl<T, _ListInfo<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListInfo<T>&&(identical(other.query, query) || other.query == query)&&(identical(other.currPage, currPage) || other.currPage == currPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.isLoadingNextPage, isLoadingNextPage) || other.isLoadingNextPage == isLoadingNextPage));
}


@override
int get hashCode => Object.hash(runtimeType,query,currPage,totalPages,const DeepCollectionEquality().hash(_items),isError,isLoadingNextPage);

@override
String toString() {
  return 'ListInfo<$T>(query: $query, currPage: $currPage, totalPages: $totalPages, items: $items, isError: $isError, isLoadingNextPage: $isLoadingNextPage)';
}


}

/// @nodoc
abstract mixin class _$ListInfoCopyWith<T,$Res> implements $ListInfoCopyWith<T, $Res> {
  factory _$ListInfoCopyWith(_ListInfo<T> value, $Res Function(_ListInfo<T>) _then) = __$ListInfoCopyWithImpl;
@override @useResult
$Res call({
 String query, int currPage, int totalPages, List<T> items, bool isError, bool isLoadingNextPage
});




}
/// @nodoc
class __$ListInfoCopyWithImpl<T,$Res>
    implements _$ListInfoCopyWith<T, $Res> {
  __$ListInfoCopyWithImpl(this._self, this._then);

  final _ListInfo<T> _self;
  final $Res Function(_ListInfo<T>) _then;

/// Create a copy of ListInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? currPage = null,Object? totalPages = null,Object? items = null,Object? isError = null,Object? isLoadingNextPage = null,}) {
  return _then(_ListInfo<T>(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,currPage: null == currPage ? _self.currPage : currPage // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<T>,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,isLoadingNextPage: null == isLoadingNextPage ? _self.isLoadingNextPage : isLoadingNextPage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
