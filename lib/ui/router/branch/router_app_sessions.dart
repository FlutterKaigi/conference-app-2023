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
