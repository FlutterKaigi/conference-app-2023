// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router_app.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $rootRoute,
    ];

RouteBase get $rootRoute => ShellRouteData.$route(
      navigatorKey: RootRoute.$navigatorKey,
      factory: $RootRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/',
          factory: $HomeRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/sessions',
          factory: $SessionsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/sponsors',
          factory: $SponsorsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/venue',
          factory: $VenueRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/contributors',
          factory: $ContributorsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/settings',
          factory: $SettingsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/license',
          factory: $LicenseRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'about-us',
              factory: $AboutUsRouteExtension._fromState,
              parentNavigatorKey: AboutUsRoute.$parentNavigatorKey,
            ),
            GoRouteData.$route(
              path: 'legal-notices',
              factory: $LegalNoticesRouteExtension._fromState,
              parentNavigatorKey: LegalNoticesRoute.$parentNavigatorKey,
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
  static SessionsRoute _fromState(GoRouterState state) => const SessionsRoute();

  String get location => GoRouteData.$location(
        '/sessions',
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

extension $VenueRouteExtension on VenueRoute {
  static VenueRoute _fromState(GoRouterState state) => const VenueRoute();

  String get location => GoRouteData.$location(
        '/venue',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ContributorsRouteExtension on ContributorsRoute {
  static ContributorsRoute _fromState(GoRouterState state) => ContributorsRoute(
        tab: _$convertMapValue(
            'tab', state.queryParameters, _$ContributorsTabEnumMap._$fromName),
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

extension $LicenseRouteExtension on LicenseRoute {
  static LicenseRoute _fromState(GoRouterState state) => const LicenseRoute();

  String get location => GoRouteData.$location(
        '/license',
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
        '/license/about-us',
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
        '/license/legal-notices',
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
