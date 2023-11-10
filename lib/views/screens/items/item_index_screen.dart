import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/generated/l10n.dart';
import 'package:restaurant_talks/models/Iitems/item_category_model.dart';
import 'package:restaurant_talks/models/Iitems/item_model.dart';
import 'package:restaurant_talks/routes/app_routes.dart';
import 'package:restaurant_talks/view_model/items/item_index_view_model.dart';
import 'package:restaurant_talks/views/widgets/custom_app_bar.dart';
import 'package:restaurant_talks/views/widgets/custom_bottom_nav_bar.dart';
import 'package:restaurant_talks/views/widgets/items/item_tile.dart';

class ItemIndexScreen extends ConsumerWidget {
  const ItemIndexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemState = ref.watch(itemIndexViewModelProvider);

    return FutureBuilder<bool>(
      future:
          ref.watch(itemIndexViewModelProvider.notifier).checkIfUserLoggedIn(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
              appBar: CustomAppBar(),
              body: Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(darkBlue),
                ),
              ));
        }

        if (snapshot.hasData && !snapshot.data!) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            goRouter.go(loginScreenPath);
          });
          return const SizedBox.shrink();
        }

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
                              hintText: S.of(context).searchItemHintText,
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
                          child: DropdownButton<ItemCategory>(
                            value: itemState.selectedCategory,
                            items: itemCategories.map((ItemCategory category) {
                              return DropdownMenuItem<ItemCategory>(
                                value: category,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    category.value,
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ),
                              );
                            }).toList(),
                            icon: const Icon(Icons.arrow_drop_down,
                                color: lightBlue),
                            underline: Container(
                              height: 1.5,
                              color: lightBlue,
                            ),
                            onChanged: (ItemCategory? newCategory) {
                              if (newCategory != null) {
                                ref
                                    .read(itemIndexViewModelProvider.notifier)
                                    .updateSelectedCategory(newCategory);
                              }
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: StreamBuilder<List<Item>>(
                      stream: itemState.itemStream,
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                        final items = snapshot.data!;
                        return GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 15.0,
                            mainAxisSpacing: 15.0,
                          ),
                          itemBuilder: (context, index) {
                            final item = items[index];
                            return InkWell(
                              onTap: () {
                                goRouter.go('$itemFormScreenPath/${item.id}');
                              },
                              child: ItemTile(item: item),
                            );
                          },
                          itemCount: items.length,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                goRouter.go(itemFormScreenPath);
              },
              backgroundColor: darkBlue,
              child: const Icon(Icons.add),
            ),
          ),
        );
      },
    );
  }
}
