part of 'localization.dart';

final _en = LocalizationEn();

final class LocalizationEn extends Localization {
  LocalizationEn() : super(languageCode: 'en');

  @override
  String get flutterKaigiTitle => 'FlutterKaigi 2023';

  @override
  String get event => 'Event';

  @override
  String get eventDate => 'Date';

  @override
  String get eventPlace => 'Place';

  @override
  String get eventPlaceDetail => 'Online & Offline';

  @override
  String get link => 'Link';

  @override
  String get twitter => 'Twitter';

  @override
  String get github => 'GitHub';

  @override
  String get medium => 'Medium';

  @override
  String get pageTitleHome => 'Home';

  @override
  String get pageTitleSessions => 'Session';

  @override
  String get pageTitleSponsors => 'Sponsor';

  @override
  String get pageTitleVenue => 'Venue';

  @override
  String get pageTitleContributors => 'Contributor';

  @override
  String get pageTitleSettings => 'Settings';

  @override
  String get pageTitleLicense => 'License';

  @override
  String get settingsThemeMode => 'Appearance';

  @override
  String get settingsThemeModeSystem => 'System';

  @override
  String get settingsThemeModeLight => 'Light';

  @override
  String get settingsThemeModeDark => 'Dark';

  @override
  String get settingsLocalizationMode => 'Language';

  @override
  String get settingsLocalizationModeSystem => 'System';

  @override
  String get settingsLocalizationModeJa => '日本語';

  @override
  String get settingsLocalizationModeEn => 'English';

  @override
  String get settingsFontFamily => 'Font Family';

  @override
  String get settingsResetPreferences => 'Reset settings';

  @override
  String get licensesLicenses => 'License';
}
