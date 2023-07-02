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

@TypedShellRoute<RootRoute>(
  routes: [
    TypedGoRoute<HomeRoute>(
      path: HomeRoute.path,
    ),
    TypedGoRoute<SessionsRoute>(
      path: SessionsRoute.path,
    ),
    TypedGoRoute<SponsorsRoute>(
      path: SponsorsRoute.path,
    ),
    TypedGoRoute<VenueRoute>(
      path: VenueRoute.path,
    ),
    TypedGoRoute<ContributorsRoute>(
      path: ContributorsRoute.path,
    ),
    TypedGoRoute<SettingsRoute>(
      path: SettingsRoute.path,
    ),
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
)
class RootRoute extends ShellRouteData {
  const RootRoute();

  static final $navigatorKey = shellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return RootScreen(
      navigator: navigator,
    );
  }
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  static final $navigatorKey = shellNavigatorKey;
  static const path = '/';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      key: state.pageKey,
      child: const HomePage(),
    );
  }
}

class SessionsRoute extends GoRouteData {
  const SessionsRoute();

  static final $navigatorKey = shellNavigatorKey;
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

  static final $navigatorKey = shellNavigatorKey;
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

  static final $navigatorKey = shellNavigatorKey;
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
  const ContributorsRoute();

  static final $navigatorKey = shellNavigatorKey;
  static const path = '/contributors';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      key: state.pageKey,
      child: const ContributorsPage(),
    );
  }
}

class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  static final $navigatorKey = shellNavigatorKey;
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

  static final $navigatorKey = shellNavigatorKey;
  static const path = '/license';

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
