import 'package:flutter_riverpod/flutter_riverpod.dart';

class MotivationNotifier extends StateNotifier<List<bool>> {
  MotivationNotifier()
      : super([
          false,
          false,
          false,
          false,
        ]);

  void toggleMotivation(int index) {
    var newState = List<bool>.from(state);

    newState[index] = !state[index];

    state = newState;
  }
}
