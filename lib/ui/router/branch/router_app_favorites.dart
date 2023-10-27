part of '../router_app.dart';

class FavoritesBranch extends StatefulShellBranchData {
  static final $navigatorKey = favoritesNavigatorKey;
}

class FavoritesRoute extends GoRouteData {
  const FavoritesRoute();

  static const path = 'favorites';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FavoritesPage();
  }
}
