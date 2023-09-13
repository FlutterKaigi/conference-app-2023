part of '../router_app.dart';

class LicensesBranch extends StatefulShellBranchData {
  static final $navigatorKey = licenseNavigatorKey;
}

class LicensesRoute extends GoRouteData {
  const LicensesRoute();

  static const path = 'licenses';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LicensesPage();
  }
}

class AboutUsRoute extends GoRouteData {
  const AboutUsRoute();

  static const path = 'about-us';

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AboutUsPage();
  }
}

class LegalNoticesRoute extends GoRouteData {
  const LegalNoticesRoute();

  static const path = 'legal-notices';

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LegalNoticesPage();
  }
}
