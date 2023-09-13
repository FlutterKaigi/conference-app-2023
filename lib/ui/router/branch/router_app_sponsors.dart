part of '../router_app.dart';

class SponsorsBranch extends StatefulShellBranchData {
  static final $navigatorKey = sponsorsNavigatorKey;
}

class SponsorsRoute extends GoRouteData {
  const SponsorsRoute();

  static const path = 'sponsors';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SponsorsPage();
  }
}
