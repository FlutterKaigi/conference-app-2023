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

class ScanCodeRoute extends GoRouteData {
  const ScanCodeRoute();

  static const path = 'scan-code';

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ScanCodePage();
  }

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(
      key: state.pageKey,
      fullscreenDialog: true,
      child: const ScanCodePage(),
    );
  }
}
