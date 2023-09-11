part of '../router_app.dart';

class VenueBranch extends StatefulShellBranchData {
  static final $navigatorKey = venueNavigatorKey;
}

class VenueRoute extends GoRouteData {
  const VenueRoute();

  static const path = 'venue';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const VenuePage();
  }
}
