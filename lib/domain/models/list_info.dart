import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_info.freezed.dart';

@freezed
abstract class ListInfo with _$ListInfo {
  const factory ListInfo({
    @Default('') String query,
    @Default(1) currPage,
    @Default(1) totalPages,
    @Default(false) bool isError,
    @Default(false) bool isLoadingNextPage,
  }) = _ListInfo;
}
