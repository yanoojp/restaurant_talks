import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
      name: data['name'] as String,
      stockCount: data['stockCount'] as int,
      categoryId: data['categoryId'] as int,
      description: data['description'] as String,
      createdAt: (data['createdAt'] as Timestamp).toDate(),
      updatedAt: (data['updatedAt'] as Timestamp).toDate(),
    );
  }
}

extension ItemX on Item {
  Map<String, dynamic> toDocument(String userId) {
    return {
      'id': id,
      userIdField: userId,
      'name': name,
      'stockCount': stockCount,
      'categoryId': categoryId,
      'description': description,
      'createdAt': Timestamp.fromDate(createdAt),
      'updatedAt': Timestamp.fromDate(updatedAt),
    };
  }
}
