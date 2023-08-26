import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_talks/constants/simulation_datas.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/utils/functions.dart';
import 'package:restaurant_talks/view_model/items/item_index_view_model.dart';
import 'package:restaurant_talks/views/widgets/custom_app_bar.dart';
import 'package:restaurant_talks/views/widgets/custom_bottom_nav_bar.dart';
import 'package:restaurant_talks/views/widgets/items/item_tile.dart';
import 'item_form_screen.dart';

class ItemIndexScreen extends ConsumerWidget {
  const ItemIndexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemState = ref.watch(itemIndexViewModelProvider);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: const CustomAppBar(),
        bottomNavigationBar: const CustomBottomNavBar(
          currentIndex: itemIndexScreenIndex,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(width: 10),
                  Expanded(
                    child: Theme(
                      data: ThemeData(
                        inputDecorationTheme: const InputDecorationTheme(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: darkBlue),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: lightBlue),
                          ),
                        ),
                      ),
                      child: TextField(
                        controller: itemState.searchController,
                        decoration: InputDecoration(
                          hintText: searchItemHintText,
                          hintStyle: const TextStyle(fontSize: 17),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.clear, color: lightBlue),
                            onPressed: () {
                              itemState.searchController.clear();
                              ref
                                  .read(itemIndexViewModelProvider.notifier)
                                  .searchItems(null);
                            },
                          ),
                        ),
                        onChanged: (value) {
                          ref
                              .read(itemIndexViewModelProvider.notifier)
                              .searchItems(value);
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 63,
                      child: DropdownButton<String>(
                        value: itemState.selectedCategory,
                        items: itemCategories.map((String category) {
                          return DropdownMenuItem<String>(
                            value: category,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Text(category),
                            ),
                          );
                        }).toList(),
                        icon:
                            const Icon(Icons.arrow_drop_down, color: lightBlue),
                        underline: Container(
                          height: 1.5,
                          color: lightBlue,
                        ),
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            ref
                                .read(itemIndexViewModelProvider.notifier)
                                .updateSelectedCategory(newValue);
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 15.0,
                    mainAxisSpacing: 15.0,
                  ),
                  itemBuilder: (context, index) {
                    final item = itemState.items[index];
                    return InkWell(
                      onTap: () {
                        screenNavigationFunction(
                            context, ItemEditScreen(item: item));
                      },
                      child: ItemTile(item: item),
                    );
                  },
                  itemCount: itemState.items.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
