import 'package:flutter/material.dart';
import '../../../constants/variables.dart';
import '../../../models/Iitems/item_model.dart';

class ItemTile extends StatelessWidget {
  final Item item;

  const ItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: darkBlue,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            item.name,
            style: const TextStyle(color: whiteColor), textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10,),
          Text(
            '${item.stockCount}',
            style: const TextStyle(color: whiteColor), textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
