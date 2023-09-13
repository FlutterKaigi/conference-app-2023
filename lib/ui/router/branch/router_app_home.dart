part of '../router_app.dart';

class HomeBranch extends StatefulShellBranchData {
  static final $navigatorKey = homeNavigatorKey;
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  static const path = '';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}
