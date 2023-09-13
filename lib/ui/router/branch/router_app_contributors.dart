part of '../router_app.dart';

class ContributorsBranch extends StatefulShellBranchData {
  static final $navigatorKey = contributorsNavigatorKey;
}

class ContributorsRoute extends GoRouteData {
  const ContributorsRoute({
    this.tab,
  });

  static const path = 'contributors';

  final ContributorsTab? tab;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ContributorsPage(
      tab: tab ?? ContributorsTab.developer,
    );
  }
}
