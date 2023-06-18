import 'package:conference_2023/ui/router/router_app.dart';
import 'package:conference_2023/ui/router/router_debug.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

enum RootTab {
  home(HomeRoute.path),
  sessions(SessionsRoute.path),
  sponsors(SponsorsRoute.path),
  venue(VenueRoute.path),
  contributors(ContributorsRoute.path),
  settings(SettingsRoute.path),
  license(LicenseRoute.path);

  const RootTab(this.path);

  final String path;
}

class RootScreen extends StatefulWidget {
  const RootScreen({
    super.key,
    required this.navigator,
  });

  final Widget navigator;

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  RootTab _getCurrentTab(BuildContext context) {
    final location = GoRouter.of(context).location;
    return RootTab.values.reversed.firstWhere(
      (element) => location.startsWith(element.path),
      orElse: () => RootTab.home,
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentTab = _getCurrentTab(context);

    return Scaffold(
      /// TODO: Fix appbar
      appBar: AppBar(
        title: Text('Tab: $currentTab'),
      ),
      drawer: NavigationDrawer(
        selectedIndex: currentTab.index,
        onDestinationSelected: (value) {
          /// close drawer
          Navigator.of(context).pop();

          /// go to debug menu
          if (kDebugMode && value == RootTab.values.length) {
            const DebugRoute().push(context);
            return;
          }

          final nextTab = RootTab.values[value];
          switch (nextTab) {
            case RootTab.home:
              const HomeRoute().go(context);
            case RootTab.sessions:
              const SessionsRoute().go(context);
            case RootTab.sponsors:
              const SponsorsRoute().go(context);
            case RootTab.venue:
              const VenueRoute().go(context);
            case RootTab.contributors:
              const ContributorsRoute().go(context);
            case RootTab.settings:
              const SettingsRoute().go(context);
            case RootTab.license:
              const LicenseRoute().go(context);
          }
        },
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              Res.of(context).flutterKaigiTitle,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          NavigationDrawerDestination(
            icon: RootTab.home.icon,
            label: Text(RootTab.home.title(context)),
          ),
          NavigationDrawerDestination(
            icon: RootTab.sessions.icon,
            label: Text(RootTab.sessions.title(context)),
          ),
          NavigationDrawerDestination(
            icon: RootTab.sponsors.icon,
            label: Text(RootTab.sponsors.title(context)),
          ),
          NavigationDrawerDestination(
            icon: RootTab.venue.icon,
            label: Text(RootTab.venue.title(context)),
          ),
          const Divider(),
          NavigationDrawerDestination(
            icon: RootTab.contributors.icon,
            label: Text(RootTab.contributors.title(context)),
          ),
          const Divider(),
          NavigationDrawerDestination(
            icon: RootTab.settings.icon,
            label: Text(RootTab.settings.title(context)),
          ),
          NavigationDrawerDestination(
            icon: RootTab.license.icon,
            label: Text(RootTab.license.title(context)),
          ),
          if (kDebugMode) ...[
            const Divider(),
            const NavigationDrawerDestination(
              icon: Icon(Icons.bug_report),
              label: Text('Debug'),
            ),
          ],
        ],
      ),
      body: widget.navigator,
    );
  }
}

extension on RootTab {
  Icon get icon => Icon(iconData);

  IconData get iconData => switch (this) {
        RootTab.home => Icons.home,
        RootTab.sessions => Icons.list,
        RootTab.sponsors => Icons.groups,
        RootTab.venue => Icons.meeting_room,
        RootTab.contributors => Icons.engineering,
        RootTab.settings => Icons.settings,
        RootTab.license => Icons.description,
      };

  String title(BuildContext context) => switch (this) {
        RootTab.home => Res.of(context).drawerHome,
        RootTab.sessions => Res.of(context).drawerSessions,
        RootTab.sponsors => Res.of(context).drawerSponsors,
        RootTab.venue => Res.of(context).drawerVenue,
        RootTab.contributors => Res.of(context).drawerContributors,
        RootTab.settings => Res.of(context).drawerSettings,
        RootTab.license => Res.of(context).drawerLicense,
      };
}
