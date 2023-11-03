import 'dart:async';
import 'dart:typed_data';

import 'package:conference_2023/model/firebase_auth.dart';
import 'package:conference_2023/model/firebase_storage.dart';
import 'package:conference_2023/model/profile/profile.dart';
import 'package:conference_2023/model/shared_preferences.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_provider.g.dart';

typedef ImageUploadFunction = Future<void> Function(Uint8List byteData);

@riverpod
class ProfileNotifier extends _$ProfileNotifier {
  String get _userNameKey => SharedPreferenceKey.userName.value;
  String get _websiteUrlKey => SharedPreferenceKey.profileWebsiteUrl.value;

  @override
  Future<Profile> build() async {
    final currentUserIdFuture = ref.watch(currentUserIdProvider.future);
    final sharedPreference = ref.watch(sharedPreferencesProvider);

    final userId = await currentUserIdFuture;

    return Profile(
      id: userId ?? '',
      name: sharedPreference.getString(_userNameKey) ?? '',
      websiteUrl: sharedPreference.getString(_websiteUrlKey) ?? '',
    );
  }

  Future<void> updateName(String name) async {
    state = await AsyncValue.guard(
      () async {
        await ref.read(sharedPreferencesProvider).setString(_userNameKey, name);
        return update(
          (profile) => profile.copyWith(
            name: name,
          ),
        );
      },
    );
  }

  Future<void> updateWebsiteUrl(String url) async {
    state = await AsyncValue.guard(
      () async {
        await ref
            .read(sharedPreferencesProvider)
            .setString(_websiteUrlKey, url);
        return update(
          (profile) => profile.copyWith(
            websiteUrl: url,
          ),
        );
      },
    );
  }
}

@riverpod
Future<String> storageUidIconPath(StorageUidIconPathRef ref) async {
  final id = await ref.watch(currentUserIdProvider.future);
  if (id == null || id.isEmpty) {
    return '';
  }

  return '/icons/$id/icon.png';
}

@riverpod
Future<String> profileImageUrl(ProfileImageUrlRef ref) async {
  final path = await ref.watch(storageUidIconPathProvider.future);
  final url = await ref.watch(imageDownloadUrlProvider(path).future);
  return url;
}

Future<void> uploadImage(Reference imageRef, Uint8List fileData) async {
  await imageRef.putData(
    fileData,
    SettableMetadata(
      contentType: 'image/png',
    ),
  );
}
