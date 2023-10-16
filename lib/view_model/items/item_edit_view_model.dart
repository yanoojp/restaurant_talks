import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_talks/constants/variables.dart';
import '../../models/Iitems/item_model.dart';

part 'item_edit_view_model.freezed.dart';

@freezed
class ItemEditState with _$ItemEditState {
  const factory ItemEditState({
    required Item item,
    required TextEditingController nameController,
    required TextEditingController stockCountController,
    required TextEditingController categoryController,
    required TextEditingController descriptionController,
  }) = _ItemEditState;
}

class ItemEditStateManager extends StateNotifier<ItemEditState> {
  ItemEditStateManager()
      : super(_ItemEditState(
          item: Item(
              userId: null,
              name: '',
              stockCount: 0,
              categoryId: 0,
              description: '',
              createdAt: DateTime.now(),
              updatedAt: DateTime.now(),
              id: null),
          nameController: TextEditingController(),
          stockCountController: TextEditingController(),
          categoryController: TextEditingController(),
          descriptionController: TextEditingController(),
        ));

  void initializeItem(String id) async {
    final item = Item(
        id: id,
        userId: null,
        name: 'name',
        stockCount: 1,
        categoryId: 1,
        description: 'description',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now());
    // final item = await getItemById(id);

    final matchingCategory = itemCategories.firstWhere(
      (category) => category.id == item.categoryId,
      orElse: () => itemCategories[0],
    );

    state.nameController.text = item.name;
    state.descriptionController.text = item.description;
    state.categoryController.text = matchingCategory.value;
    state.stockCountController.text = item.stockCount.toString();
    state = state.copyWith(item: item);
  }

  void addCount() {
    int newStockCount = state.item.stockCount + 1;
    Item updatedItem = state.item.copyWith(stockCount: newStockCount);
    state = state.copyWith(item: updatedItem);
  }

  void subtractCount() {
    if (state.item.stockCount > 0) {
      int newStockCount = state.item.stockCount - 1;
      Item updatedItem = state.item.copyWith(stockCount: newStockCount);
      state = state.copyWith(item: updatedItem);
    }
  }

  Future<void> saveItem() async {
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;
    final uid = user?.uid;

    if (uid == null) {
      throw Exception("User is not authenticated.");
    }

    final collection = FirebaseFirestore.instance.collection('items');
    if (state.item.id == null || state.item.id!.isEmpty) {
      await collection.add(state.item.toDocument(uid));
    } else {
      await collection.doc(state.item.id).set(state.item.toDocument(uid));
    }
  }
}

final itemEditStateManager =
    StateNotifierProvider<ItemEditStateManager, ItemEditState>(
        (ref) => ItemEditStateManager());
