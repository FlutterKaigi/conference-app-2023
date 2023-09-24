import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@Freezed(unionKey: 'type')
class Session with _$Session {
  const factory Session.talk({
    required SessionType type,
    required String id,
    required String title,
    required String description,
    required List<Speaker> speakers,
    required DateTime start,
    required DateTime end,
  }) = SessionTalk;

  const factory Session.sponsor({
    required SessionType type,
    required String id,
    required String title,
    required String description,
    required List<Speaker> speakers,
    required DateTime start,
    required DateTime end,
  }) = SessionSponsor;

  const factory Session.event({
    required SessionType type,
    required String id,
    required String title,
    required String description,
    required DateTime start,
    required DateTime end,
  }) = SessionEvent;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}

enum SessionType {
  talk,
  sponsor,
  event,
}

@freezed
class Speaker with _$Speaker {
  const factory Speaker({
    required String id,
    required String name,
    required String bio,
    required String profilePicture,
  }) = _Speaker;

  factory Speaker.fromJson(Map<String, dynamic> json) =>
      _$SpeakerFromJson(json);
}

@freezed
class SessionData with _$SessionData {
  const factory SessionData({
    required Map<Room, List<Session>> items,
  }) = _SessionData;

  factory SessionData.fromJson(Map<String, dynamic> json) =>
      _$SessionDataFromJson(json);
}

enum Room {
  room1,
  room2,
}
