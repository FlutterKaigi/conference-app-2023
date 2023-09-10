import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/ui/router/router_debug.dart';
import 'package:conference_2023/ui/screen/root_tab.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class RootDrawer extends ConsumerWidget {
  const RootDrawer({
    super.key,
    required this.navigationShell,
    required this.currentTab,
  });

  final StatefulNavigationShell navigationShell;
  final RootTab currentTab;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);

    return NavigationDrawer(
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
        navigationShell.goBranch(nextTab.branchIndex);
      },
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            localization.flutterKaigiTitle,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        NavigationDrawerDestination(
          icon: RootTab.home.icon,
          label: Text(RootTab.home.title(localization)),
        ),
        NavigationDrawerDestination(
          icon: RootTab.sessions.icon,
          label: Text(RootTab.sessions.title(localization)),
        ),
        NavigationDrawerDestination(
          icon: RootTab.sponsors.icon,
          label: Text(RootTab.sponsors.title(localization)),
        ),
        NavigationDrawerDestination(
          icon: RootTab.venue.icon,
          label: Text(RootTab.venue.title(localization)),
        ),
        const Divider(),
        NavigationDrawerDestination(
          icon: RootTab.contributors.icon,
          label: Text(RootTab.contributors.title(localization)),
        ),
        const Divider(),
        NavigationDrawerDestination(
          icon: RootTab.settings.icon,
          label: Text(RootTab.settings.title(localization)),
        ),
        NavigationDrawerDestination(
          icon: RootTab.license.icon,
          label: Text(RootTab.license.title(localization)),
        ),
        if (kDebugMode) ...[
          const Divider(),
          const NavigationDrawerDestination(
            icon: Icon(Icons.bug_report),
            label: Text('Debug'),
          ),
        ],
      ],
    );
  }
}
