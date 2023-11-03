import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_category_model.freezed.dart';

@freezed
class ItemCategory with _$ItemCategory {
  const factory ItemCategory({
    required int id,
    required String value,
  }) = _ItemCategory;
}
