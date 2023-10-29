import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/firebase/user_authentication.dart';
import 'package:restaurant_talks/models/Iitems/item_category_model.dart';
import 'package:restaurant_talks/models/Iitems/item_model.dart';
import 'package:restaurant_talks/models/users/login_model.dart';
import 'package:restaurant_talks/routes/app_routes.dart';
import 'package:restaurant_talks/view_model/users/signup_view_model.dart';

part 'item_index_view_model.freezed.dart';

@freezed
class ItemIndexState with _$ItemIndexState {
  const factory ItemIndexState({
    required List<Item> items,
    required ItemCategory selectedCategory,
    required TextEditingController searchController,
  }) = _ItemIndexState;
}

class ItemIndexViewModel extends StateNotifier<ItemIndexState> {
  ItemIndexViewModel()
      : super(ItemIndexState(
            items: [],
            selectedCategory: itemCategories[0],
            searchController: TextEditingController())) {
    loadInitialData();
  }

  Future<List<Item>> getItems() async {
    final QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection(itemsCollection).get();
    return snapshot.docs.map((doc) => Item.fromDocument(doc)).toList();
  }

  List<ItemCategory> getItemCategories() {
    return itemCategories;
  }

  void loadInitialData() async {
    final categories = getItemCategories();
    final items = await getItems();

    state = state.copyWith(items: items, selectedCategory: categories.first);
    _sortItemsByUpdatedAt();
  }

  void _filterItemsByCategory() async {
    final categories = getItemCategories();
    final items = await getItems();

    if (state.selectedCategory == categories.first) {
      state = state.copyWith(items: items);
    } else {
      state = state.copyWith(
        items: items
            .where((item) => item.categoryId == state.selectedCategory)
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

  void updateSelectedCategory(ItemCategory newCategory) {
    if (state.selectedCategory != newCategory) {
      state = state.copyWith(selectedCategory: itemCategories[0]);
      _filterItemsByCategory();
    }
  }

  void searchItems(String? searchTerm) {
    if (searchTerm == null || searchTerm == '') {
      _filterItemsByCategory();
    } else {
      state = state.copyWith(
        items: state.items
            .where((item) =>
                item.name.toLowerCase().contains(searchTerm.toLowerCase()))
            .toList(),
      );
    }
    _sortItemsByUpdatedAt();
  }

  Future<bool> checkIfUserLoggedIn() async {
    final user = FirebaseAuth.instance.currentUser;

    if (user != null && user.emailVerified) {
      return true;
    }

    return false;
  }
}

final itemIndexViewModelProvider =
    StateNotifierProvider<ItemIndexViewModel, ItemIndexState>(
  (ref) => ItemIndexViewModel(),
);
