part of '../router_app.dart';

class SessionsBranch extends StatefulShellBranchData {
  static final $navigatorKey = sessionNavigatorKey;
}

class SessionsRoute extends GoRouteData {
  const SessionsRoute({
    this.room,
  });

  static const path = 'sessions';

  final Room? room;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SessionsPage(
      room: room ?? Room.room1,
    );
  }
}

class SessionDetailRoute extends GoRouteData {
  const SessionDetailRoute({
    required this.sessionId,
  });

  static const path = ':sessionId';

  final String sessionId;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(
      child: SessionDetailPage(
        sessionId: sessionId,
      ),
    );
  }
}
