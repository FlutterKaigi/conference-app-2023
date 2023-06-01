import 'package:conference_2023/ui/router/router_app.dart';
import 'package:flutter/material.dart';
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
        title: Text('Tab: $currentTab'),
      ),
      body: navigator,
    );
  }
}
