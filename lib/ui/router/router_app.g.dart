// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router_app.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $rootRoute,
    ];

RouteBase get $rootRoute => StatefulShellRouteData.$route(
      navigatorContainerBuilder: RootRoute.$navigatorContainerBuilder,
      factory: $RootRouteExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          navigatorKey: HomeBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/',
              factory: $HomeRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: SessionsBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/sessions',
              factory: $SessionsRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: ':sessionId',
                  parentNavigatorKey: SessionDetailRoute.$parentNavigatorKey,
                  factory: $SessionDetailRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: VenueBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/venue',
              factory: $VenueRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: ProfileBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/profile',
              factory: $ProfileRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'scan-code',
                  parentNavigatorKey: ScanCodeRoute.$parentNavigatorKey,
                  factory: $ScanCodeRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: SponsorsBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/sponsors',
              factory: $SponsorsRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: FavoritesBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/favorites',
              factory: $FavoritesRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: ContributorsBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/contributors',
              factory: $ContributorsRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: SettingsBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/settings',
              factory: $SettingsRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/licenses',
              factory: $LicensesRouteExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'about-us',
                  parentNavigatorKey: AboutUsRoute.$parentNavigatorKey,
                  factory: $AboutUsRouteExtension._fromState,
                ),
                GoRouteData.$route(
                  path: 'legal-notices',
                  parentNavigatorKey: LegalNoticesRoute.$parentNavigatorKey,
                  factory: $LegalNoticesRouteExtension._fromState,
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $RootRouteExtension on RootRoute {
  static RootRoute _fromState(GoRouterState state) => const RootRoute();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SessionsRouteExtension on SessionsRoute {
  static SessionsRoute _fromState(GoRouterState state) => SessionsRoute(
        room: _$convertMapValue(
            'room', state.uri.queryParameters, _$RoomEnumMap._$fromName),
      );

  String get location => GoRouteData.$location(
        '/sessions',
        queryParams: {
          if (room != null) 'room': _$RoomEnumMap[room!],
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$RoomEnumMap = {
  Room.room1: 'room1',
  Room.room2: 'room2',
};

extension $SessionDetailRouteExtension on SessionDetailRoute {
  static SessionDetailRoute _fromState(GoRouterState state) =>
      SessionDetailRoute(
        sessionId: state.pathParameters['sessionId']!,
      );

  String get location => GoRouteData.$location(
        '/sessions/${Uri.encodeComponent(sessionId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $VenueRouteExtension on VenueRoute {
  static VenueRoute _fromState(GoRouterState state) => VenueRoute(
        tab: _$convertMapValue(
            'tab', state.uri.queryParameters, _$VenueTabEnumMap._$fromName),
      );

  String get location => GoRouteData.$location(
        '/venue',
        queryParams: {
          if (tab != null) 'tab': _$VenueTabEnumMap[tab!],
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$VenueTabEnumMap = {
  VenueTab.floor: 'floor',
  VenueTab.location: 'location',
  VenueTab.lunch: 'lunch',
};

extension $ProfileRouteExtension on ProfileRoute {
  static ProfileRoute _fromState(GoRouterState state) => const ProfileRoute();

  String get location => GoRouteData.$location(
        '/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ScanCodeRouteExtension on ScanCodeRoute {
  static ScanCodeRoute _fromState(GoRouterState state) => const ScanCodeRoute();

  String get location => GoRouteData.$location(
        '/profile/scan-code',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SponsorsRouteExtension on SponsorsRoute {
  static SponsorsRoute _fromState(GoRouterState state) => const SponsorsRoute();

  String get location => GoRouteData.$location(
        '/sponsors',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FavoritesRouteExtension on FavoritesRoute {
  static FavoritesRoute _fromState(GoRouterState state) =>
      const FavoritesRoute();

  String get location => GoRouteData.$location(
        '/favorites',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ContributorsRouteExtension on ContributorsRoute {
  static ContributorsRoute _fromState(GoRouterState state) => ContributorsRoute(
        tab: _$convertMapValue('tab', state.uri.queryParameters,
            _$ContributorsTabEnumMap._$fromName),
      );

  String get location => GoRouteData.$location(
        '/contributors',
        queryParams: {
          if (tab != null) 'tab': _$ContributorsTabEnumMap[tab!],
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$ContributorsTabEnumMap = {
  ContributorsTab.developer: 'developer',
  ContributorsTab.staff: 'staff',
};

extension $SettingsRouteExtension on SettingsRoute {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LicensesRouteExtension on LicensesRoute {
  static LicensesRoute _fromState(GoRouterState state) => const LicensesRoute();

  String get location => GoRouteData.$location(
        '/licenses',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AboutUsRouteExtension on AboutUsRoute {
  static AboutUsRoute _fromState(GoRouterState state) => const AboutUsRoute();

  String get location => GoRouteData.$location(
        '/licenses/about-us',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LegalNoticesRouteExtension on LegalNoticesRoute {
  static LegalNoticesRoute _fromState(GoRouterState state) =>
      const LegalNoticesRoute();

  String get location => GoRouteData.$location(
        '/licenses/legal-notices',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}

extension<T extends Enum> on Map<T, String> {
  T _$fromName(String value) =>
      entries.singleWhere((element) => element.value == value).key;
}
