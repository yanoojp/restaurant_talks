import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/main.dart';

final mainProvider = StateNotifierProvider<MainNotifier, Main>((ref) {
  return MainNotifier(const Main(helloWorld: '', number: 0));
});

class MainNotifier extends StateNotifier<Main> {
  MainNotifier(Main main) : super(main);

  void incrementCounter(int number) {
    state = state.copyWith(number: number + 1);
  }

  void updateMain({String? helloWorld, int? number}) {
    state = Main(
      helloWorld: helloWorld ?? state.helloWorld,
      number: number ?? state.number,
    );
  }
}
