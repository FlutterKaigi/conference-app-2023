import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remote_config.g.dart';

@riverpod
FirebaseRemoteConfig remoteConfig(
  RemoteConfigRef ref,
) =>
    FirebaseRemoteConfig.instance;

enum RemoteConfigKey {
  staff('staff'),
  developers('developer'),
  ;

  const RemoteConfigKey(this.key);

  final String key;
}

Future<void> initFirebaseRemoteConfig() async {
  final remoteConfig = FirebaseRemoteConfig.instance;
  await remoteConfig.setDefaults(
    const {
      'staff': '{"items": []}',
      'developer': '{"items": []}',
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
