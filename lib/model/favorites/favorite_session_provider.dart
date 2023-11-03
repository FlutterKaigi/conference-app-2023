import 'package:conference_2023/model/favorites/favorite_session_ids.dart';
import 'package:conference_2023/model/sessions/session.dart';
import 'package:conference_2023/model/sessions/session_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorite_session_provider.g.dart';

@riverpod
List<Session> favoriteSessions(
  FavoriteSessionsRef ref,
) {
  final data = ref.watch(sessionDataProvider);
  final favoriteSessionIds = ref.watch(favoriteSessionIdsNotifierProvider);

  return [
    ...data.values
        .expand((session) => session)
        .where((session) => favoriteSessionIds.contains(session.id)),
  ];
}
