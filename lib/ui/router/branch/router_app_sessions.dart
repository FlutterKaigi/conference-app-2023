part of '../router_app.dart';

class SessionsBranch extends StatefulShellBranchData {
  static final $navigatorKey = sessionNavigatorKey;
}

class SessionsRoute extends GoRouteData {
  const SessionsRoute();

  static const path = 'sessions';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SessionsPage();
  }
}
