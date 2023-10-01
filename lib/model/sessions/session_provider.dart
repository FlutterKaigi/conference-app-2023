import 'dart:developer';

import 'package:conference_2023/model/remote_config.dart';
import 'package:conference_2023/model/sessions/session.dart';
import 'package:conference_2023/util/extension/remote_config_ext.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'session_provider.g.dart';

@riverpod
Session session(SessionRef ref, String id) {
  final data = ref.watch(sessionDataProvider);
  return data.values
      .expand((element) => element)
      .firstWhere((element) => element.id == id);
}

@riverpod
List<Session> sessions(SessionsRef ref, Room room) {
  final data = ref.watch(sessionDataProvider);
  final sessions = data[room];
  if (sessions == null) {
    log('sessions is null');
    return const [];
  }

  return sessions;
}

@riverpod
Map<Room, List<Session>> sessionData(SessionDataRef ref) {
  final remoteConfig = ref.watch(remoteConfigProvider);
  final json = remoteConfig.getJsonMapFromKey(RemoteConfigKey.session);
  final sessionData = SessionData.fromJson(json);

  return sessionData.items;
}
