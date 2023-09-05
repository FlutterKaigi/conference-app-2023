import 'package:conference_2023/model/app_locale.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'localization.g.dart';
part 'localization_en.dart';
part 'localization_ja.dart';

/// A provider that returns the current [Localization].
@riverpod
Localization localization(LocalizationRef ref) {
  final appLocale = ref.watch(appLocaleProvider);
  return switch (appLocale.languageCode) {
    'en' => _en,
    'ja' => _ja,
    _ => _en,
  };
}

abstract base class Localization {
  Localization({
    required this.languageCode,
  });

  final String languageCode;

  late final dateFormatter = DateFormatter(
    languageCode: languageCode,
  );

  String get flutterKaigiTitle;

  String get event;

  String get eventDate;

  String get eventPlace;

  String get eventPlaceDetail;

  String get link;

  String get twitter;

  String get github;

  String get medium;

  String get discord;

  String get pageTitleHome;

  String get pageTitleSessions;

  String get pageTitleSponsors;

  String get pageTitleVenue;

  String get pageTitleContributors;

  String get pageTitleSettings;

  String get pageTitleLicense;

  String get contributorsDeveloper;

  String get contributorsStaff;

  String get settingsPushNotification;

  String get settingsPushNotificationPrompt;

  String get settingsPushNotificationAuthorized;

  String get settingsPushNotificationDenied;

  String get settingsPushNotificationProvisional;

  String get settingsPushNotificationRestricted;

  String get settingsPushNotificationLimited;

  String get settingsPushNotificationPermanentlyDenied;

  String get settingsPushNotificationMessageAuthorized;

  String get settingsPushNotificationMessageDenied;

  String get settingsPushNotificationMessageNotDetermined;

  String get settingsPushNotificationMessageSettings;

  String get settingsThemeMode;

  String get settingsThemeModeSystem;

  String get settingsThemeModeLight;

  String get settingsThemeModeDark;

  String get settingsLocalizationMode;

  String get settingsLocalizationModeSystem;

  String get settingsLocalizationModeJa;

  String get settingsLocalizationModeEn;

  String get settingsFontFamily;

  String get settingsResetPreferences;

  String get licensesLicenses;

  String get licensesAboutUs;

  String get licensesAboutUsContents;

  String get licensesPrivacyPolicy;

  String get licensesPrivacyPolicyUrl;

  String get licensesCodeOfConduct;

  String get licensesCodeOfConductUrl;

  String get licensesContactUs;

  String get licensesContactUsUrl;

  String get licensesLegalNotices;
}

/// A wrapper class of [DateFormat] for localization.
class DateFormatter {
  DateFormatter({
    required this.languageCode,
  });

  final String languageCode;

  late final yMMEd = DateFormat.yMMMEd(languageCode);
}
