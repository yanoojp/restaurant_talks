import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
              name: '',
              stockCount: 0,
              category: '',
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
        name: 'name',
        id: id,
        stockCount: 1,
        category: 'category',
        description: 'description',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now());
    // final item = await getItemById(id);
    state.nameController.text = item.name;
    state.descriptionController.text = item.description;
    state.categoryController.text = item.category;
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

  Future<void> saveItem() async {}
}

final itemEditStateManager =
    StateNotifierProvider<ItemEditStateManager, ItemEditState>(
        (ref) => ItemEditStateManager());
