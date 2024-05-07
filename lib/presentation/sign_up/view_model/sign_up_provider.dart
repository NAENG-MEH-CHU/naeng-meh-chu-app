import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:naeng_meh_chu/domain/model/member_profile.dart';
import 'package:naeng_meh_chu/presentation/sign_up/view_model/notifier/member_profile_notifier.dart';

final signUpMemberProfileProvider =
    StateNotifierProvider<MemberProfileNotifier, MemberProfile>((ref) {
  return MemberProfileNotifier();
});
