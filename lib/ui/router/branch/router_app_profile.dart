part of '../router_app.dart';

class ProfileBranch extends StatefulShellBranchData {
  static final $navigatorKey = profileNavigatorKey;
}

class ProfileRoute extends GoRouteData {
  const ProfileRoute();

  static const path = 'profile';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProfilePage();
  }
}
