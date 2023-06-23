import 'package:conference_2023/l10n/locales_provider.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'localization.g.dart';
part 'localization_en.dart';
part 'localization_ja.dart';

@riverpod
Localization localization(LocalizationRef ref) {
  final locales = ref.watch(localesProvider).valueOrNull ?? const [];

  for (final locale in locales) {
    switch (locale.languageCode) {
      case 'en':
        return _en;
      case 'ja':
        return _ja;
    }
  }

  return _ja;
}

abstract base class Localization {
  const Localization({
    required this.languageCode,
  });

  final String languageCode;

  DateFormatter get dateFormatter => DateFormatter(
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
}

/// A wrapper class of [DateFormat] for localization.
class DateFormatter {
  const DateFormatter({
    required this.languageCode,
  });

  final String languageCode;

  DateFormat get yMMEd => DateFormat.yMMMEd(languageCode);
}
