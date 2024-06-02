import 'package:naeng_meh_chu/data/model/member_profile.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'initialize_notifier.g.dart';

@riverpod
class InitializeNotifier extends _$InitializeNotifier {
  @override
  Future<MemberProfile> build() async {
    return MemberProfile(isComplete: false);
  }
}
