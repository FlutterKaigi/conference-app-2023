import 'package:conference_2023/ui/router/navigator_key.dart';
import 'package:conference_2023/ui/screen/contributors/contributors.dart';
import 'package:conference_2023/ui/screen/home.dart';
import 'package:conference_2023/ui/screen/licenses/about_us/about_us.dart';
import 'package:conference_2023/ui/screen/licenses/legal_notices/legal_notices.dart';
import 'package:conference_2023/ui/screen/licenses/licenses.dart';
import 'package:conference_2023/ui/screen/root.dart';
import 'package:conference_2023/ui/screen/sessions/sessions.dart';
import 'package:conference_2023/ui/screen/settings/settings.dart';
import 'package:conference_2023/ui/screen/sponsors/sponsors.dart';
import 'package:conference_2023/ui/screen/venue/venue.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'router_app.g.dart';

@TypedStatefulShellRoute<RootRoute>(
  branches: [
    TypedStatefulShellBranch<HomeBranch>(
      routes: [
        TypedGoRoute<HomeRoute>(
          path: HomeRoute.path,
        ),
      ],
    ),
    TypedStatefulShellBranch<SessionsBranch>(
      routes: [
        TypedGoRoute<SessionsRoute>(
          path: SessionsRoute.path,
        ),
      ],
    ),
    TypedStatefulShellBranch<VenueBranch>(
      routes: [
        TypedGoRoute<VenueRoute>(path: VenueRoute.path),
      ],
    ),
    TypedStatefulShellBranch<SponsorsBranch>(
      routes: [
        TypedGoRoute<SponsorsRoute>(
          path: SponsorsRoute.path,
        ),
      ],
    ),
    TypedStatefulShellBranch<ContributorsBranch>(
      routes: [
        TypedGoRoute<ContributorsRoute>(
          path: ContributorsRoute.path,
        ),
      ],
    ),
    TypedStatefulShellBranch<SettingsBranch>(
      routes: [
        TypedGoRoute<SettingsRoute>(
          path: SettingsRoute.path,
        ),
      ],
    ),
    TypedStatefulShellBranch(
      routes: [
        TypedGoRoute<LicenseRoute>(
          path: LicenseRoute.path,
          routes: [
            TypedGoRoute<AboutUsRoute>(
              path: 'about-us',
            ),
            TypedGoRoute<LegalNoticesRoute>(
              path: 'legal-notices',
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
    return RootScreen(
      navigationShell: navigationShell,
    );
  }
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  static const path = '/';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      key: state.pageKey,
      child: const HomePage(),
    );
  }
}

class HomeBranch extends StatefulShellBranchData {
    static final $navigatorKey = homeNavigatorKey;
}

class SessionsBranch extends StatefulShellBranchData {
    static final $navigatorKey = sessionNavigatorKey;
}

class SponsorsBranch extends StatefulShellBranchData {
    static final $navigatorKey = sponsorsNavigatorKey;
}

class VenueBranch extends StatefulShellBranchData {
    static final $navigatorKey = venueNavigatorKey;
}

class ContributorsBranch extends StatefulShellBranchData {
    static final $navigatorKey = contributorsNavigatorKey;
}

class SettingsBranch extends StatefulShellBranchData {
    static final $navigatorKey = settingsNavigatorKey;
}

class LicenseBranch extends StatefulShellBranchData {
    static final $navigatorKey = licenseNavigatorKey;
}

class SessionsRoute extends GoRouteData {
  const SessionsRoute();

  static const path = '/sessions';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      key: state.pageKey,
      child: const SessionsPage(),
    );
  }
}

class SponsorsRoute extends GoRouteData {
  const SponsorsRoute();

  static const path = '/sponsors';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      key: state.pageKey,
      child: const SponsorsPage(),
    );
  }
}

class VenueRoute extends GoRouteData {
  const VenueRoute();

  static const path = '/venue';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      key: state.pageKey,
      child: const VenuePage(),
    );
  }
}

class ContributorsRoute extends GoRouteData {
  const ContributorsRoute({
    this.tab,
  });

  static const path = '/contributors';

  final ContributorsTab? tab;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      key: state.pageKey,
      child: ContributorsPage(
        tab: tab ?? ContributorsTab.developer,
      ),
    );
  }
}

class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  static const path = '/settings';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      key: state.pageKey,
      child: const SettingsPage(),
    );
  }
}

class LicenseRoute extends GoRouteData {
  const LicenseRoute();

  static const path = '/licenses';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      key: state.pageKey,
      child: const LicensesPage(),
    );
  }
}

class AboutUsRoute extends GoRouteData {
  const AboutUsRoute();

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(
      key: state.pageKey,
      child: const AboutUsPage(),
    );
  }
}

class LegalNoticesRoute extends GoRouteData {
  const LegalNoticesRoute();

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(
      key: state.pageKey,
      child: const LegalNoticesPage(),
    );
  }
}
