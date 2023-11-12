import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_talks/constants/variables.dart';

part 'item_model.freezed.dart';

@freezed
class Item with _$Item {
  const factory Item({
    required String? id,
    required String? userId,
    required String name,
    required int stockCount,
    required int categoryId,
    required String description,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Item;

  factory Item.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Item(
      id: doc.id,
      userId: data[userIdField] as String,
      name: data[nameField] as String,
      stockCount: data[stockCountField] as int,
      categoryId: data[categoryIdField] as int,
      description: data[descriptionField] as String,
      createdAt: (data[createdAtField] as Timestamp).toDate(),
      updatedAt: (data[updatedAtField] as Timestamp).toDate(),
    );
  }
}

extension ItemX on Item {
  Map<String, dynamic> toDocument(String userId) {
    return {
      idField: id,
      userIdField: userId,
      nameField: name,
      stockCountField: stockCount,
      categoryIdField: categoryId,
      descriptionField: description,
      createdAtField: Timestamp.fromDate(createdAt),
      updatedAtField: Timestamp.fromDate(updatedAt),
    };
  }
}
