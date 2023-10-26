import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remote_config.g.dart';

@riverpod
FirebaseRemoteConfig remoteConfig(
  RemoteConfigRef ref,
) =>
    FirebaseRemoteConfig.instance;

enum RemoteConfigKey {
  staff('staff'),
  developer('developer'),
  sponsor('sponsor'),
  session('session'),
  lunch('lunch'),
  ;

  const RemoteConfigKey(this.key);

  final String key;
}
