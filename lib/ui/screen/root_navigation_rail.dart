import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/ui/router/router_app.dart';
import 'package:conference_2023/ui/router/router_debug.dart';
import 'package:conference_2023/ui/screen/root_tab.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class RootNavigationRail extends ConsumerWidget {
  const RootNavigationRail({
    super.key,
    required this.navigationShell,
    required this.currentTab,
    required this.extended,
  });

  final StatefulNavigationShell navigationShell;
  final RootTab currentTab;
  final bool extended;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);

    return NavigationRail(
      extended: extended,
      labelType: extended ? null : NavigationRailLabelType.all,
      selectedIndex: currentTab.index,
      destinations: [
        NavigationRailDestination(
          icon: RootTab.home.icon,
          label: Text(RootTab.home.title(localization)),
        ),
        NavigationRailDestination(
          icon: RootTab.sessions.icon,
          label: Text(RootTab.sessions.title(localization)),
        ),
        NavigationRailDestination(
          icon: RootTab.sponsors.icon,
          label: Text(RootTab.sponsors.title(localization)),
        ),
        NavigationRailDestination(
          icon: RootTab.venue.icon,
          label: Text(RootTab.venue.title(localization)),
        ),
        NavigationRailDestination(
          icon: RootTab.contributors.icon,
          label: Text(RootTab.contributors.title(localization)),
        ),
        NavigationRailDestination(
          icon: RootTab.settings.icon,
          label: Text(RootTab.settings.title(localization)),
        ),
        NavigationRailDestination(
          icon: RootTab.license.icon,
          label: Text(RootTab.license.title(localization)),
        ),
        if (kDebugMode)
          const NavigationRailDestination(
            icon: Icon(Icons.bug_report),
            label: Text('Debug'),
          ),
      ],
      onDestinationSelected: (value) {
        /// go to debug menu
        if (kDebugMode && value == RootTab.values.length) {
          const DebugRoute().push(context);
          return;
        }

        final nextTab = RootTab.values[value];
        switch (nextTab) {
          case RootTab.home:
            navigationShell.goBranch(HomeBranch.index);
          case RootTab.sessions:
            navigationShell.goBranch(SessionsBranch.index);
          case RootTab.sponsors:
            const SponsorsRoute().go(context);
          case RootTab.venue:
            navigationShell.goBranch(VenueBranch.index);
          case RootTab.contributors:
            const ContributorsRoute().go(context);
          case RootTab.settings:
            const SettingsRoute().go(context);
          case RootTab.license:
            const LicenseRoute().go(context);
        }
      },
    );
  }
}
