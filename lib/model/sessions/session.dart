import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@Freezed(unionKey: 'type')
class Session with _$Session {
  const factory Session.talk({
    required String id,
    required String url,
    required LocaleText title,
    required LocaleText description,
    required Speaker speaker,
    required DateTime start,
    required DateTime end,
  }) = SessionTalk;

  const factory Session.sponsor({
    required String id,
    required String url,
    required LocaleText title,
    required LocaleText description,
    required Speaker speaker,
    required DateTime start,
    required DateTime end,
  }) = SessionSponsor;

  const factory Session.event({
    required String id,
    required LocaleText title,
    required DateTime start,
    required DateTime end,
  }) = SessionEvent;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}

@freezed
class Speaker with _$Speaker {
  const factory Speaker({
    required String name,
    required String kana,
    @Default('') String twitter,
    required String avatarUrl,
  }) = _Speaker;

  factory Speaker.fromJson(Map<String, dynamic> json) =>
      _$SpeakerFromJson(json);
}

@freezed
class LocaleText with _$LocaleText {
  const factory LocaleText({
    required String ja,
    required String en,
  }) = _LocaleText;

  factory LocaleText.fromJson(Map<String, dynamic> json) =>
      _$LocaleTextFromJson(json);
}

@freezed
class SessionData with _$SessionData {
  const factory SessionData({
    required Map<Room, List<Session>> items,
  }) = _SessionData;

  factory SessionData.fromJson(Map<String, dynamic> json) =>
      _$SessionDataFromJson(json);
}

extension LocaleTextEx on LocaleText {
  String get(Locale locale) => switch (locale.languageCode) {
        'ja' => ja,
        'en' => en,
        _ => en,
      };
}

enum Room {
  room1,
  room2,
}
