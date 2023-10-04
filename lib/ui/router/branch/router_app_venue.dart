part of '../router_app.dart';

class VenueBranch extends StatefulShellBranchData {
  static final $navigatorKey = venueNavigatorKey;
}

class VenueRoute extends GoRouteData {
  const VenueRoute({
    this.tab,
  });

  static const path = 'venue';

  final VenueTab? tab;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return VenuePage(
      type: tab ?? VenueTab.values.first,
    );
  }
}
