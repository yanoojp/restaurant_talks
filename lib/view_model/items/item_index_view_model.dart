import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/models/Iitems/item_category_model.dart';
import 'package:restaurant_talks/models/Iitems/item_model.dart';

part 'item_index_view_model.freezed.dart';

@freezed
class ItemIndexState with _$ItemIndexState {
  const factory ItemIndexState({
    Stream<List<Item>>? itemStream,
    required ItemCategory selectedCategory,
    required TextEditingController searchController,
  }) = _ItemIndexState;
}

class ItemIndexViewModel extends StateNotifier<ItemIndexState> {
  ItemIndexViewModel()
      : super(ItemIndexState(
            itemStream: null,
            selectedCategory: itemCategories[0],
            searchController: TextEditingController())) {
    loadInitialData();
  }

  String? _searchTerm;

  Stream<List<Item>> getItems() {
    return FirebaseFirestore.instance
        .collection(itemsCollection)
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => Item.fromDocument(doc)).toList())
        .map((items) {

      // Filter by category
      if (state.selectedCategory != itemCategories[0]) {
        items = items
            .where((item) => item.categoryId == state.selectedCategory.id)
            .toList();
      }

      // Filter by search term
      if (_searchTerm != null && _searchTerm!.isNotEmpty) {
        items = items
            .where((item) =>
                item.name.toLowerCase().contains(_searchTerm!.toLowerCase()))
            .toList();
      }

      // Sort items
      items.sort((a, b) => b.updatedAt.compareTo(a.updatedAt));

      return items;
    });
  }

  StreamSubscription? _itemSubscription;
  Future<void> loadInitialData() async {
    _itemSubscription?.cancel();
    _itemSubscription = getItems().listen((newItems) {
      state = state.copyWith(itemStream: Stream.value(newItems));
    });
  }

  // void _filterItemsByCategory() async {
  //   final items = await getItems();

  //   if (state.selectedCategory == itemCategories[0]) {
  //     state = state.copyWith(itemStream: items);
  //   } else {
  //     state = state.copyWith(
  //       itemStream: items
  //           .where((item) => item.categoryId == state.selectedCategory)
  //           .toList(),
  //     );
  //   }
  //   _sortItemsByUpdatedAt();
  // }

  // void _sortItemsByUpdatedAt() {
  //   final List<Item> sortedItems = List.from(state.itemStream)
  //     ..sort((a, b) => b.updatedAt.compareTo(a.updatedAt));
  //   state = state.copyWith(itemStream: sortedItems);
  // }

  void updateSelectedCategory(ItemCategory newCategory) {
    if (state.selectedCategory != newCategory) {
      state = state.copyWith(selectedCategory: newCategory);
      _itemSubscription?.cancel();
      _itemSubscription = getItems().listen((newItems) {
        state = state.copyWith(itemStream: Stream.value(newItems));
      });
    }
  }

  void searchItems(String? searchTerm) {
    _searchTerm = searchTerm;
    _itemSubscription?.cancel();
    _itemSubscription = getItems().listen((newItems) {
      state = state.copyWith(itemStream: Stream.value(newItems));
    });
  }

  Future<bool> checkIfUserLoggedIn() async {
    final user = FirebaseAuth.instance.currentUser;
    return user != null && user.emailVerified;
  }

  @override
  void dispose() {
    _itemSubscription?.cancel();
    super.dispose();
  }
}

final itemIndexViewModelProvider =
    StateNotifierProvider<ItemIndexViewModel, ItemIndexState>(
  (ref) => ItemIndexViewModel(),
);
