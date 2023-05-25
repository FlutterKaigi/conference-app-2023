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
      appBar: AppBar(
        title: Text('Tab: $currentTab'),
      ),
      drawer: NavigationDrawer(
        selectedIndex: currentTab.index,
        onDestinationSelected: (value) {
          /// close drawer
          Navigator.of(context).pop();

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
        children: const [
          Padding(
            padding: EdgeInsets.all(24),
            child: Text(
              'Header',
            ),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.home),
            label: Text('Home'),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.home),
            label: Text('Sessions'),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.home),
            label: Text('Sponsors'),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.home),
            label: Text('Venue'),
          ),
          Divider(),
          NavigationDrawerDestination(
            icon: Icon(Icons.home),
            label: Text('Contributors'),
          ),
          Divider(),
          NavigationDrawerDestination(
            icon: Icon(Icons.home),
            label: Text('Settings'),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.home),
            label: Text('Licenses'),
          ),
        ],
      ),
      body: widget.navigator,
    );
  }
}
