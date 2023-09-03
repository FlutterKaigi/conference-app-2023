import 'dart:convert';

import 'package:conference_2023/model/remote_config.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

extension FirebaseRemoteConfigExt on FirebaseRemoteConfig {
  String getStringFromKey(RemoteConfigKey key) => getString(key.key);

  Map<String, dynamic> getJsonMapFromKey(RemoteConfigKey key) =>
      json.decode(getStringFromKey(key));
}
