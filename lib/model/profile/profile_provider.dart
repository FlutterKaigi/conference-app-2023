import 'package:conference_2023/model/firebase_auth.dart';
import 'package:conference_2023/model/firebase_storage.dart';
import 'package:conference_2023/model/profile/profile.dart';
import 'package:conference_2023/model/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_provider.g.dart';

@riverpod
class ProfileNotifier extends _$ProfileNotifier {
  String get _userNameKey => SharedPreferenceKey.userName.value;
  String get _websiteUrlKey => SharedPreferenceKey.profileWebsiteUrl.value;

  @override
  Future<Profile> build() async {
    final firebaseAuth = ref.watch(firebaseAuthProvider);
    final sharedPreference = ref.watch(sharedPreferencesProvider);
    final credential = await firebaseAuth.signInAnonymously();
    final user = credential.user;

    if (user == null) {
      return const Profile();
    }

    return Profile(
      id: user.uid,
      name: sharedPreference.getString(_userNameKey) ?? '',
      websiteUrl: sharedPreference.getString(_websiteUrlKey) ?? '',
    );
  }

  Future<void> updateName(String name) async {
    state = await AsyncValue.guard(
      () async {
        await ref.read(sharedPreferencesProvider).setString(_userNameKey, name);
        return update((profile) => profile.copyWith(name: name));
      },
    );
  }

  Future<void> updateWebsiteUrl(String url) async {
    state = await AsyncValue.guard(
      () async {
        await ref
            .read(sharedPreferencesProvider)
            .setString(_websiteUrlKey, url);
        return update((profile) => profile.copyWith(websiteUrl: url));
      },
    );
  }
}

@riverpod
Future<String> profileImageUrl(ProfileImageUrlRef ref) async {
  final id = await ref.watch(
    profileNotifierProvider.selectAsync((data) => data.id),
  );
  final path = '/icons/$id/icon.png';
  return ref.watch(imageDownloadUrlProvider(path).future);
}
