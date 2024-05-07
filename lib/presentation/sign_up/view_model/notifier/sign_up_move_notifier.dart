import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpMoveNotifier extends StateNotifier<String> {
  SignUpMoveNotifier() : super("first");

  void moveToFirstPage() {
    state = "first";
  }

  void moveToSecondPage() {
    state = "second";
  }
}
