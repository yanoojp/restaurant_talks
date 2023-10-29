import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/models/Iitems/item_category_model.dart';
import 'package:restaurant_talks/routes/app_routes.dart';
import 'package:restaurant_talks/view_model/items/item_edit_view_model.dart';
import 'package:restaurant_talks/view_model/items/item_index_view_model.dart';
import 'package:restaurant_talks/views/widgets/base/button.dart';

class ItemFormScreen extends ConsumerWidget {
  final String? id;
  const ItemFormScreen({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemEditState = ref.watch(itemEditStateManager(id));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBlue,
      ),
      body: Container(
        color: whiteColor,
        padding: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('$itemNameLabel:'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(controller: itemEditState.nameController),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('$itemStockCountLabel:'),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          ref
                              .read(itemEditStateManager(id).notifier)
                              .subtractCount();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: darkBlue,
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(15),
                        ),
                        child: const Text(subtractCounbtButton,
                            style: TextStyle(fontSize: normalFontSize)),
                      ),
                      Text(
                        '${itemEditState.item.stockCount}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: normalFontSize),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          ref
                              .read(itemEditStateManager(id).notifier)
                              .addCount();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: darkBlue,
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(15),
                        ),
                        child: const Text(addCountButton,
                            style: TextStyle(fontSize: normalFontSize)),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('$itemCategoryLabel:'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: DropdownButton<ItemCategory>(
                        value: itemEditState.currentCategory,
                        items: itemCategories.map((ItemCategory category) {
                          return DropdownMenuItem<ItemCategory>(
                            value: category,
                            child: Text(category.value),
                          );
                        }).toList(),
                        onChanged: (ItemCategory? category) {
                          if (category != null) {
                            ref
                                .read(itemEditStateManager(id).notifier)
                                .updateCategory(category);
                          }
                        }),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('$itemdescriptionLabel:'),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      controller: itemEditState.descriptionController,
                      minLines: 5,
                      maxLines: 5,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Button(
                text: saveButton,
                backgroundColor: darkBlue,
                textColor: whiteColor,
                func: () {
                  ref.read(itemEditStateManager(id).notifier).saveItem();
                  ref
                      .watch(itemIndexViewModelProvider.notifier)
                      .loadInitialData;
                  goRouter.go(itemIndexScreenPath);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
