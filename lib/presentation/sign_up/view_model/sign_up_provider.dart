// 이동
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view_model/notifier/sign_up_move_notifier.dart';

final onBoardingMoveProvider =
    StateNotifierProvider<SignUpMoveNotifier, String>((ref) {
  return SignUpMoveNotifier();
});
