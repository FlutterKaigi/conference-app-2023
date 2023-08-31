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
  String get contributorsDeveloper => 'Developer';

  @override
  String get contributorsStaff => 'Staff';

  @override
  String get settingsPushNotification => 'Push Notification';

  @override
  String get settingsPushNotificationPrompt =>
      'By allowing push notifications, you can receive notifications about FlutterKaigi.';

  @override
  String get settingsPushNotificationAuthorized => 'Authorized';

  @override
  String get settingsPushNotificationDenied => 'Denied';

  @override
  String get settingsPushNotificationProvisional => 'Provisional';

  @override
  String get settingsPushNotificationRestricted => 'Restricted';

  @override
  String get settingsPushNotificationLimited => 'Limited';

  @override
  String get settingsPushNotificationPermanentlyDenied => 'PermanentlyDenied';

  @override
  String get settingsPushNotificationMessageAuthorized =>
      'OK! Push notification is enabled.';

  @override
  String get settingsPushNotificationMessageDenied =>
      'Sorry, do not send push notifications';

  @override
  String get settingsPushNotificationMessageNotDetermined =>
      'Permission is not set. Please set it from the settings screen.';

  @override
  String get settingsPushNotificationMessageSettings =>
      'Permission is partially set. Please set it from the settings screen.';

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

  @override
  String get licensesAboutUs => 'About us';

  @override
  String get licensesAboutUsContents =>
      'FlutterKaigi is a conference for Flutter/Dart lovers from around the world. Our objective is to provide a space for sharing your knowledge and passion for Flutter/Dart. And we are running the committee as volunteers. Beginners and advanced users alike gather to learn, discuss, and enjoy Flutter/Dart. Although the event will be held in Japan, we are using Internet distribution to transmit the information to the entire world.';

  @override
  String get licensesPrivacyPolicy => 'Privacy Policy';

  @override
  String get licensesPrivacyPolicyUrl =>
      'https://flutterkaigi.jp/flutterkaigi/Privacy-Policy.html';

  @override
  String get licensesCodeOfConduct => 'Code of Conduct';

  @override
  String get licensesCodeOfConductUrl =>
      'https://flutterkaigi.jp/flutterkaigi/Code-of-Conduct.html';

  @override
  String get licensesContactUs => 'Contact us';

  @override
  String get licensesContactUsUrl =>
      'https://docs.google.com/forms/d/e/1FAIpQLSemYPFEWpP8594MWI4k3Nz45RJzMS7pz1ufwtnX4t3V7z2TOw/viewform';

  @override
  String get licensesLegalNotices => 'Legal Notices';
}
