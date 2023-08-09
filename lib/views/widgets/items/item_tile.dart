import 'package:flutter/material.dart';
import '../../../constants/variables.dart';

class ItemTile extends StatelessWidget {
  final int index;

  const ItemTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Item Name $index"),
            const Text("Item Stock"),
          ],
        ),
      ),
    );
  }
}
