part of '../router_app.dart';

class SettingsBranch extends StatefulShellBranchData {
  static final $navigatorKey = settingsNavigatorKey;
}

class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  static const path = 'settings';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingsPage();
  }
}
