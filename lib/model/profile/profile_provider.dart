import 'dart:async';
import 'dart:typed_data';

import 'package:conference_2023/model/firebase_auth.dart';
import 'package:conference_2023/model/firebase_storage.dart';
import 'package:conference_2023/model/shared_preferences.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_provider.g.dart';

@riverpod
class UserName extends _$UserName {
  String get _key => SharedPreferenceKey.userName.value;

  @override
  String build() {
    final sharedPreference = ref.watch(sharedPreferencesProvider);
    return sharedPreference.getString(_key) ?? '';
  }

  Future<void> update(String name) async {
    await ref.read(sharedPreferencesProvider).setString(_key, name);
    state = name;
  }
}

@riverpod
class WebsiteUrl extends _$WebsiteUrl {
  String get _key => SharedPreferenceKey.profileWebsiteUrl.value;

  @override
  String build() {
    final sharedPreference = ref.watch(sharedPreferencesProvider);
    return sharedPreference.getString(_key) ?? '';
  }

  Future<void> update(String url) async {
    await ref.read(sharedPreferencesProvider).setString(_key, url);
    state = url;
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
