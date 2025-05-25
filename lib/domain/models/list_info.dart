import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_info.freezed.dart';

@freezed
abstract class ListInfo<T> with _$ListInfo<T> {
  const ListInfo._();

  const factory ListInfo({
    required String query,
    required int currPage,
    required int totalPages,
    required List<T> items,
    @Default(false) bool isError,
    @Default(false) bool isLoadingNextPage,
  }) = _ListInfo;

  factory ListInfo.empty() => ListInfo(query: '', currPage: 1, totalPages: 1, items: []);
}
