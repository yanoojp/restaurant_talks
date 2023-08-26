// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../../../constants/simulation_datas.dart';
// import '../../../constants/variables.dart';

// class PrefectureDropdown extends ConsumerWidget {
//   final TextEditingController controller;

//   const PrefectureDropdown({Key? key, required this.controller})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return DropdownButtonFormField<String>(
//       value: controller.text.isEmpty ? null : controller.text,
//       style: const TextStyle(color: whiteColor),
//       items: prefectures.map((prefecture) {
//         return DropdownMenuItem<String>(
//           value: prefecture,
//           child: Text(
//             prefecture,
//             style: const TextStyle(fontSize: 16),
//           ),
//         );
//       }).toList(),
//       decoration: const InputDecoration(
//         hintText: prefectureHintText,
//         hintStyle: TextStyle(color: whiteColor),
//       ),
//       onChanged: (value) {
//         controller.text = value ?? '';
//       },
//       dropdownColor: darkBlue,
//     );
//   }
// }
