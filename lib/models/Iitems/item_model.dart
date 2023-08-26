import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_model.freezed.dart';

@freezed
class Item with _$Item {
  const factory Item({
    required String name,
    required int stockCount,
    required String category,
    required String description,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Item;
}
