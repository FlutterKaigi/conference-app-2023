import 'package:conference_2023/l10n/locale_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'localization.g.dart';
part 'localization_ja.dart';

@riverpod
Localization localization(LocalizationRef ref) {
  final locale = ref.watch(localeProvider);

  return switch (locale.valueOrNull?.languageCode) {
    'ja' => _ja,
    _ => _ja,
  };
}

interface class Localization {
  const Localization({
    required this.flutterKaigiTitle,
    required this.event,
    required this.eventDate,
    required this.eventDateDetail,
    required this.eventPlace,
    required this.eventPlaceDetail,
    required this.link,
    required this.twitter,
    required this.github,
    required this.medium,
    required this.pageTitleHome,
    required this.pageTitleSessions,
    required this.pageTitleSponsors,
    required this.pageTitleVenue,
    required this.pageTitleContributors,
    required this.pageTitleSettings,
    required this.pageTitleLicense,
  });

  final String flutterKaigiTitle;
  final String event;
  final String eventDate;
  final String eventDateDetail;
  final String eventPlace;
  final String eventPlaceDetail;
  final String link;
  final String twitter;
  final String github;
  final String medium;
  final String pageTitleHome;
  final String pageTitleSessions;
  final String pageTitleSponsors;
  final String pageTitleVenue;
  final String pageTitleContributors;
  final String pageTitleSettings;
  final String pageTitleLicense;
}
