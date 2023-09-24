import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
class Session with _$Session {
  const factory Session({
    required String id,
    required String title,
    required String description,
    required SessionType type,
    required List<Speaker> speakers,
    required DateTime start,
    required DateTime end,
  }) = _Session;

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
