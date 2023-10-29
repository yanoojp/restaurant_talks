import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/models/Iitems/item_category_model.dart';
import 'package:restaurant_talks/routes/app_routes.dart';
import 'package:restaurant_talks/view_model/items/item_edit_view_model.dart';
import 'package:restaurant_talks/views/widgets/base/button.dart';

class ItemFormScreen extends ConsumerWidget {
  final String? id;
  ItemFormScreen({Key? key, required this.id}) : super(key: key);
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemEditState = ref.watch(itemEditStateManager(id));

    if (nameController.text != itemEditState.item.name) {
      nameController.text = itemEditState.item.name;
    }

    if (descriptionController.text != itemEditState.item.description) {
      descriptionController.text = itemEditState.item.description;
    }

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
                    child: TextField(
                      controller: nameController,
                      onChanged: (value) {
                        ref
                            .read(itemEditStateManager(id).notifier)
                            .updateItemName(value);
                      },
                    ),
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
                      controller: descriptionController,
                      minLines: 5,
                      maxLines: 5,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        ref
                            .read(itemEditStateManager(id).notifier)
                            .updateDescription(value);
                      },
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
