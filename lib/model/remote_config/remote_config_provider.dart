import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remote_config_provider.g.dart';

@riverpod
FirebaseRemoteConfig remoteConfig(
  RemoteConfigRef ref,
) =>
    FirebaseRemoteConfig.instance;

Future<void> initFirebaseRemoteConfig() async {
  final remoteConfig = FirebaseRemoteConfig.instance;
  await remoteConfig.setDefaults(
    const {
      'staff': '{"items": []}',
    },
  );

  if (kIsWeb) {
    await remoteConfig.fetchAndActivate();
  } else {
    remoteConfig.onConfigUpdated.listen((event) async {
      await remoteConfig.activate();
    });
  }
}
