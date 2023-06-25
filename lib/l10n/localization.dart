import 'package:conference_2023/l10n/locales_provider.dart';
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
    _ => _ja,
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

  String get pageTitleHome;

  String get pageTitleSessions;

  String get pageTitleSponsors;

  String get pageTitleVenue;

  String get pageTitleContributors;

  String get pageTitleSettings;

  String get pageTitleLicense;

  String get settingsThemeMode;

  String get settingsThemeModeSystem;

  String get settingsThemeModeLight;

  String get settingsThemeModeDark;

  String get settingsLocalizationMode;

  String get settingsLocalizationModeSystem;

  String get settingsLocalizationModeJa;

  String get settingsLocalizationModeEn;

  String get settingsResetPreferences;
}

/// A wrapper class of [DateFormat] for localization.
class DateFormatter {
  DateFormatter({
    required this.languageCode,
  });

  final String languageCode;

  late final yMMEd = DateFormat.yMMMEd(languageCode);
}
