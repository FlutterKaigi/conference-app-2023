part of '../router_app.dart';

class SessionsBranch extends StatefulShellBranchData {
  static final $navigatorKey = sessionNavigatorKey;
}

class SessionsRoute extends GoRouteData {
  const SessionsRoute();

  static const path = 'sessions';

  static String pathWithRoom(Room room) => '$path?room=${room.number}';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    final rawRoom = state.uri.queryParameters['room']?.replaceFirst('room', '');
    final room = Room.values.firstWhereOrNull((e) => e.number == rawRoom);
    if (room == null) {
      return const SessionsPage();
    }
    return SessionsPage(room: room);
  }
}
