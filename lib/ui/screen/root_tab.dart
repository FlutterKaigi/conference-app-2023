import 'package:conference_2023/ui/router/router_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

  String title(BuildContext context) => switch (this) {
        RootTab.home => Res.of(context).pageTitleHome,
        RootTab.sessions => Res.of(context).pageTitleSessions,
        RootTab.sponsors => Res.of(context).pageTitleSponsors,
        RootTab.venue => Res.of(context).pageTitleVenue,
        RootTab.contributors => Res.of(context).pageTitleContributors,
        RootTab.settings => Res.of(context).pageTitleSettings,
        RootTab.license => Res.of(context).pageTitleLicense,
      };
}
