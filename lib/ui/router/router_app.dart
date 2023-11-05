import 'package:conference_2023/model/sessions/session.dart';
import 'package:conference_2023/ui/router/navigator_key.dart';
import 'package:conference_2023/ui/screen/contributors/contributors.dart';
import 'package:conference_2023/ui/screen/home.dart';
import 'package:conference_2023/ui/screen/licenses/about_us/about_us.dart';
import 'package:conference_2023/ui/screen/licenses/legal_notices/legal_notices.dart';
import 'package:conference_2023/ui/screen/licenses/licenses.dart';
import 'package:conference_2023/ui/screen/profile/profile.dart';
import 'package:conference_2023/ui/screen/profile/scan_code.dart';
import 'package:conference_2023/ui/screen/root.dart';
import 'package:conference_2023/ui/screen/favorites/favorites.dart';
import 'package:conference_2023/ui/screen/sessions/session_detail.dart';
import 'package:conference_2023/ui/screen/sessions/sessions.dart';
import 'package:conference_2023/ui/screen/settings/settings.dart';
import 'package:conference_2023/ui/screen/sponsors/sponsors.dart';
import 'package:conference_2023/ui/screen/venue/venue.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'branch/router_app_contributors.dart';
part 'branch/router_app_home.dart';
part 'branch/router_app_licenses.dart';
part 'branch/router_app_sessions.dart';
part 'branch/router_app_settings.dart';
part 'branch/router_app_sponsors.dart';
part 'branch/router_app_venue.dart';
part 'branch/router_app_favorites.dart';
part 'branch/router_app_profile.dart';
part 'router_app.g.dart';

@TypedStatefulShellRoute<RootRoute>(
  branches: [
    /// BottomNavigationBar Tabs
    TypedStatefulShellBranch<HomeBranch>(
      routes: [
        TypedGoRoute<HomeRoute>(
          path: '/${HomeRoute.path}',
        ),
      ],
    ),
    TypedStatefulShellBranch<SessionsBranch>(
      routes: [
        TypedGoRoute<SessionsRoute>(
          path: '/${SessionsRoute.path}',
          routes: [
            TypedGoRoute<SessionDetailRoute>(
              path: SessionDetailRoute.path,
            ),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<VenueBranch>(
      routes: [
        TypedGoRoute<VenueRoute>(
          path: '/${VenueRoute.path}',
        ),
      ],
    ),
    TypedStatefulShellBranch<ProfileBranch>(
      routes: [
        TypedGoRoute<ProfileRoute>(
          path: '/${ProfileRoute.path}',
          routes: [
            TypedGoRoute<ScanCodeRoute>(
              path: ScanCodeRoute.path,
            ),
          ],
        ),
      ],
    ),

    /// Only Appears in Drawer and NavigationRail
    TypedStatefulShellBranch<SponsorsBranch>(
      routes: [
        TypedGoRoute<SponsorsRoute>(
          path: '/${SponsorsRoute.path}',
        ),
      ],
    ),
    TypedStatefulShellBranch<FavoritesBranch>(
      routes: [
        TypedGoRoute<FavoritesRoute>(
          path: '/${FavoritesRoute.path}',
        ),
      ],
    ),
    TypedStatefulShellBranch<ContributorsBranch>(
      routes: [
        TypedGoRoute<ContributorsRoute>(
          path: '/${ContributorsRoute.path}',
        ),
      ],
    ),
    TypedStatefulShellBranch<SettingsBranch>(
      routes: [
        TypedGoRoute<SettingsRoute>(
          path: '/${SettingsRoute.path}',
        ),
      ],
    ),
    TypedStatefulShellBranch(
      routes: [
        TypedGoRoute<LicensesRoute>(
          path: '/${LicensesRoute.path}',
          routes: [
            TypedGoRoute<AboutUsRoute>(
              path: AboutUsRoute.path,
            ),
            TypedGoRoute<LegalNoticesRoute>(
              path: LegalNoticesRoute.path,
            ),
          ],
        ),
      ],
    ),
  ],
)
class RootRoute extends StatefulShellRouteData {
  const RootRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return navigationShell;
  }

  static Widget $navigatorContainerBuilder(
    BuildContext context,
    StatefulNavigationShell navigationShell,
    List<Widget> children,
  ) {
    return RootScreen(
      navigationShell: navigationShell,
      children: children,
    );
  }
}
