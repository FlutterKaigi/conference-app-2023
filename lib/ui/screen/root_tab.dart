import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/ui/router/router_app.dart';
import 'package:flutter/material.dart';

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

extension RootTabExt on RootTab {
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

  String title(Localization localization) => switch (this) {
        RootTab.home => localization.pageTitleHome,
        RootTab.sessions => localization.pageTitleSessions,
        RootTab.sponsors => localization.pageTitleSponsors,
        RootTab.venue => localization.pageTitleVenue,
        RootTab.contributors => localization.pageTitleContributors,
        RootTab.settings => localization.pageTitleSettings,
        RootTab.license => localization.pageTitleLicense,
      };

  // These values are prescribed by sort order defined in TypedStatefulShellRoute
  int get branchIndex => switch (this) {
        RootTab.home => 0,
        RootTab.sessions => 1,
        RootTab.sponsors => 3,
        RootTab.venue => 2,
        RootTab.contributors => 4,
        RootTab.settings => 5,
        RootTab.license => 6,
      };
}
