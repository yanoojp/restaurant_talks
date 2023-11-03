import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/models/Iitems/item_category_model.dart';
import 'package:restaurant_talks/models/Iitems/item_model.dart';

part 'item_edit_view_model.freezed.dart';

@freezed
class ItemEditState with _$ItemEditState {
  const factory ItemEditState({
    required Item item,
    required ItemCategory currentCategory,
  }) = _ItemEditState;
}

class ItemEditStateManager extends StateNotifier<ItemEditState> {
  final String? itemId;

  ItemEditStateManager({this.itemId})
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
            currentCategory: itemCategories[1])) {
    initializeItem(itemId);
  }

  void initializeItem(String? id) async {
    Item item = Item(
        id: id,
        userId: null,
        name: '',
        stockCount: 1,
        categoryId: 1,
        description: '',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now());

    final editedItem = await getItemById(id);
    if (editedItem != null) item = editedItem;

    final matchingCategory = itemCategories.firstWhere(
      (category) => category.id == item.categoryId,
      orElse: () => itemCategories[0],
    );

    state = state.copyWith(item: item, currentCategory: matchingCategory);
  }

  Future<Item?> getItemById(String? id) async {
    if (id == null) return null;

    DocumentSnapshot docSnapshot = await FirebaseFirestore.instance
        .collection(itemsCollection)
        .doc(id)
        .get();

    if (docSnapshot.exists) {
      return Item.fromDocument(docSnapshot);
    } else {
      return null;
    }
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

  void updateItemName(String newName) {
    Item updatedItem = state.item.copyWith(name: newName);
    state = state.copyWith(item: updatedItem);
  }

  void updateDescription(String newDescription) {
    Item updatedItem = state.item.copyWith(description: newDescription);
    state = state.copyWith(item: updatedItem);
  }

  void updateCategory(ItemCategory category) {
    Item updatedItem = state.item.copyWith(categoryId: category.id);
    state = state.copyWith(item: updatedItem);
    state = state.copyWith(currentCategory: category);
  }

  Future<void> saveItem() async {
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;
    final uid = user?.uid;

    if (uid == null) {
      throw Exception(userNotAuthenticatedMessage);
    }

    final collection = FirebaseFirestore.instance.collection(itemsCollection);
    if (state.item.id == null || state.item.id!.isEmpty) {
      await collection.add(state.item.toDocument(uid));
    } else {
      await collection.doc(state.item.id).set(state.item.toDocument(uid));
    }
  }
}

final itemEditStateManager =
    StateNotifierProvider.family<ItemEditStateManager, ItemEditState, String?>(
        (ref, id) => ItemEditStateManager(itemId: id));
