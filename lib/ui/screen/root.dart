import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/ui/screen/root_drawer.dart';
import 'package:conference_2023/ui/screen/root_navigation.dart';
import 'package:conference_2023/ui/screen/root_tab.dart';
import 'package:conference_2023/util/extension/build_context_ext.dart';
import 'package:conference_2023/util/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class RootScreen extends ConsumerWidget {
  const RootScreen({
    super.key,
    required this.navigator,
  });

  final Widget navigator;

  RootTab _getCurrentTab(BuildContext context) {
    final location = GoRouter.of(context).location;
    return RootTab.values.reversed.firstWhere(
      (element) => location.startsWith(element.path),
      orElse: () => RootTab.home,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);

    final screenSize = context.screenSize;
    final currentTab = _getCurrentTab(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(currentTab.title(localization)),
      ),
      drawer: RootDrawer(
        currentTab: currentTab,
      ),
      body: navigator,
      bottomNavigationBar: switch (screenSize) {
        ScreenSize.compact => RootNavigation(
            currentTab: currentTab,
          ),
        _ => null,
      },
    );
  }
}
