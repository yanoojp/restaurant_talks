import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_talks/constants/simulation_datas.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/utils/functions.dart';
import 'package:restaurant_talks/views/screens/items/item_index_screen.dart';
import 'package:restaurant_talks/views/widgets/base/button.dart';
import '../../../models/Iitems/item_model.dart';
import '../../../view_model/items/item_edit_view_model.dart';

bool _isInitialized = false;

class ItemEditScreen extends ConsumerWidget {
  final Item item;
  const ItemEditScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemEditState = ref.watch(itemEditStateManager);

    if (!_isInitialized) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(itemEditStateManager.notifier).initializeItem(item);
      });
      _isInitialized = true;
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
                  const Text('$itemNameLabel:'),
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
                  const Text('$itemStockCountLabel:'),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          ref
                              .read(itemEditStateManager.notifier)
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
                          ref.read(itemEditStateManager.notifier).addCount();
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
                  const Text('$itemCategoryLabel:'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: DropdownButtonFormField<String>(
                      value: itemEditState.categoryController.text.isEmpty
                          ? defaultItemCategoryLabel
                          : itemEditState.categoryController.text,
                      items: itemCategories.map((category) {
                        return DropdownMenuItem(
                          value: category,
                          child: Text(category),
                        );
                      }).toList(),
                      onChanged: (value) {
                        itemEditState.categoryController.text = value ?? '';
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('$itemdescriptionLabel:'),
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
                  ref.read(itemEditStateManager.notifier).saveItem();
                  screenNavigationFunction(context, const ItemIndexScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
