import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/ui/screen/root_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class RootNavigationBar extends ConsumerWidget {
  const RootNavigationBar({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);

    final (selectedIndex, indicatorColor) = navigationShell.currentIndex <= 2
        ? (navigationShell.currentIndex, null)
        : (0, Colors.transparent);

    return NavigationBar(
      indicatorColor: indicatorColor,
      selectedIndex: selectedIndex,
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
      onDestinationSelected: (index) => navigationShell.goBranch(
        index,
        initialLocation: index == navigationShell.currentIndex,
      ),
    );
  }
}
