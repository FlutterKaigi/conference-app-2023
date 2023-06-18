import 'package:conference_2023/ui/screen/root_drawer.dart';
import 'package:conference_2023/ui/screen/root_tab.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RootScreen extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final currentTab = _getCurrentTab(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(currentTab.title(context)),
      ),
      drawer: RootDrawer(
        currentTab: currentTab,
      ),
      body: navigator,
    );
  }
}
