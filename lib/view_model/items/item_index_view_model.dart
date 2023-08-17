import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_talks/constants/simulation_datas.dart';
import 'package:restaurant_talks/constants/variables.dart';
import '../../../models/Iitems/item_model.dart';

part 'item_index_view_model.freezed.dart';

@freezed
class ItemIndexState with _$ItemIndexState {
  const factory ItemIndexState({
    required List<Item> items,
    required String selectedCategory,
  }) = _ItemIndexState;
}

class ItemIndexViewModel extends StateNotifier<ItemIndexState> {
  ItemIndexViewModel()
      : super(const ItemIndexState(
          items: [],
          selectedCategory: notSelected,
        )) {
    loadInitialData();
  }

  List<Item> getItems() {
    return sampleItems;
  }

  List<String> getItemCategories(){
    return itemCategories;
  }

  void loadInitialData() {
    final categories = getItemCategories();
    final items = getItems();

    state =
        state.copyWith(items: items, selectedCategory: categories.first);
    _sortItemsByUpdatedAt();
  }

  void _filterItemsByCategory() {
    final categories = getItemCategories();
    final items = getItems();

    if (state.selectedCategory == categories.first) {
      state = state.copyWith(items: items);
    } else {
      state = state.copyWith(
        items: items
            .where((item) => item.category == state.selectedCategory)
            .toList(),
      );
    }
    _sortItemsByUpdatedAt();
  }

  void _sortItemsByUpdatedAt() {
    final List<Item> sortedItems = List.from(state.items)
      ..sort((a, b) => b.updatedAt.compareTo(a.updatedAt));
    state = state.copyWith(items: sortedItems);
  }

  void updateSelectedCategory(String newCategory) {
    if (state.selectedCategory != newCategory) {
      state = state.copyWith(selectedCategory: newCategory);
      _filterItemsByCategory();
    }
  }
}

final itemIndexViewModelProvider =
    StateNotifierProvider<ItemIndexViewModel, ItemIndexState>(
  (ref) => ItemIndexViewModel(),
);
