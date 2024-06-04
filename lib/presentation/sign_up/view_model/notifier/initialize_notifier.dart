import 'package:naeng_meh_chu/data/model/member_profile.dart';
import 'package:naeng_meh_chu/data/repository/member_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'initialize_notifier.g.dart';

@riverpod
class InitializeNotifier extends _$InitializeNotifier {
  @override
  Future<MemberProfile> build() async {
    return MemberProfile(isComplete: false);
  }

  Future<void> initializeMember() async {
    final response = await MemberRepository.initializeMember(
        '푸매니저', '여', '20대', ['좀 더 다양한 음식을 해 먹고 싶어요.']);
    print(response);
  }
}
