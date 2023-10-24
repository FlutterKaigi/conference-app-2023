import 'package:conference_2023/model/remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> initFirebaseRemoteConfig(WidgetRef ref) async {
  final remoteConfig = ref.read(remoteConfigProvider);
  await remoteConfig.setDefaults(
    const {
      'staff': '{"items": []}',
      'developer': '{"items": []}',
      'sponsor': '{"platinum": [], "gold": [], "silver": []}',
      'session': '{"items": {"room1": [],"room2": []}}',
      'lunch': '{"items": []}',
    },
  );

  if (kIsWeb) {
    /// [onConfigUpdated] is not supported on web.
    /// see [https://github.com/firebase/flutterfire/pull/10647]
    await remoteConfig.fetchAndActivate();
  } else {
    /// Support realtime update on mobile.
    remoteConfig.onConfigUpdated.listen((event) async {
      await remoteConfig.activate();
      ref.invalidate(remoteConfigProvider);
    });
  }
}
