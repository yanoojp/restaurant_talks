import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_model.freezed.dart';
part 'item_model.g.dart'; // for json_serializable

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

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
