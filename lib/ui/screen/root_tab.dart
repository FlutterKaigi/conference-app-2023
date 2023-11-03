import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/ui/router/router_app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum RootTab {
  home(HomeRoute.path),
  sessions(SessionsRoute.path),
  sponsors(SponsorsRoute.path),
  venue(VenueRoute.path),
  favorites(FavoritesRoute.path),
  contributors(ContributorsRoute.path),
  settings(SettingsRoute.path),
  profile(ProfileRoute.path),
  license(LicensesRoute.path),
  ;

  const RootTab(this.path);

  final String path;

  static RootTab current(BuildContext context) {
    final location = GoRouterState.of(context).uri;
    return RootTab.values.firstWhere(
      (element) => location.pathSegments.firstOrNull == element.path,
      orElse: () => RootTab.home,
    );
  }
}

extension RootTabExt on RootTab {
  Icon get icon => Icon(iconData);

  IconData get iconData => switch (this) {
        RootTab.home => Icons.home,
        RootTab.sessions => Icons.list,
        RootTab.sponsors => Icons.groups,
        RootTab.venue => Icons.meeting_room,
        RootTab.favorites => Icons.favorite,
        RootTab.contributors => Icons.engineering,
        RootTab.settings => Icons.settings,
        RootTab.license => Icons.description,
        RootTab.profile => Icons.person,
      };

  String title(Localization localization) => switch (this) {
        RootTab.home => localization.pageTitleHome,
        RootTab.sessions => localization.pageTitleSessions,
        RootTab.sponsors => localization.pageTitleSponsors,
        RootTab.venue => localization.pageTitleVenue,
        RootTab.favorites => localization.pageTitleFavorites,
        RootTab.contributors => localization.pageTitleContributors,
        RootTab.settings => localization.pageTitleSettings,
        RootTab.license => localization.pageTitleLicense,
        RootTab.profile => localization.pageTitleProfile,
      };

  /// These values are prescribed by sort order defined in [RootRoute]
  int get branchIndex => switch (this) {
        RootTab.home => 0,
        RootTab.sessions => 1,
        RootTab.sponsors => 4,
        RootTab.venue => 2,
        RootTab.favorites => 5,
        RootTab.contributors => 6,
        RootTab.settings => 7,
        RootTab.license => 8,
        RootTab.profile => 3,
      };
}
