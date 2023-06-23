import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/ui/router/router_app.dart';
import 'package:conference_2023/ui/screen/root_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RootNavigation extends ConsumerWidget {
  const RootNavigation({
    super.key,
    required this.currentTab,
  });

  final RootTab currentTab;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);

    final int selectedIndex;
    final Color? indicatorColor;

    switch (currentTab) {
      case RootTab.home:
        selectedIndex = 0;
        indicatorColor = null;
      case RootTab.sessions:
        selectedIndex = 1;
        indicatorColor = null;
      case RootTab.venue:
        selectedIndex = 2;
        indicatorColor = null;
      default:
        selectedIndex = 0;
        indicatorColor = Colors.transparent;
    }

    return NavigationBar(
      selectedIndex: selectedIndex,
      indicatorColor: indicatorColor,
      destinations: [
        NavigationDestination(
          icon: RootTab.home.icon,
          label: RootTab.home.title(localization),
        ),
        NavigationDestination(
          icon: RootTab.sessions.icon,
          label: RootTab.sessions.title(localization),
        ),
        NavigationDestination(
          icon: RootTab.venue.icon,
          label: RootTab.venue.title(localization),
        ),
      ],
      onDestinationSelected: (value) => switch (value) {
        0 => const HomeRoute().go(context),
        1 => const SessionsRoute().go(context),
        2 => const VenueRoute().go(context),
        _ => throw UnimplementedError(),
      },
    );
  }
}
