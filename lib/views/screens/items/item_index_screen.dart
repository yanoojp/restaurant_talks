import 'package:flutter/material.dart';
import 'package:restaurant_talks/views/widgets/base/app_bar.dart';
import '../../widgets/items/item_tile.dart';

class ItemIndexScreen extends StatelessWidget {
  const ItemIndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 15.0,
          ),
          itemBuilder: (context, index) {
            return ItemTile(index: index);
          },
          itemCount: 30,
        ),
      ),
    );
  }
}
