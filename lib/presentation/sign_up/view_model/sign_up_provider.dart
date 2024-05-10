import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/domain/model/member_profile.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view_model/notifier/member_profile_notifier.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view_model/notifier/motivation_notifier.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view_model/notifier/sign_up_move_notifier.dart';

final signUpMemberProfileProvider =
    StateNotifierProvider<MemberProfileNotifier, MemberProfile>((ref) {
  return MemberProfileNotifier();
});

final signUpMoveProvider =
    StateNotifierProvider<SignUpMoveNotifier, String>((ref) {
  return SignUpMoveNotifier();
});

final motivationProvider =
    StateNotifierProvider<MotivationNotifier, List<bool>>((ref) {
  return MotivationNotifier();
});
