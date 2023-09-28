// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionTalk _$$SessionTalkFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SessionTalk',
      json,
      ($checkedConvert) {
        final val = _$SessionTalk(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          speakers: $checkedConvert(
              'speakers',
              (v) => (v as List<dynamic>)
                  .map((e) => Speaker.fromJson(e as Map<String, dynamic>))
                  .toList()),
          start: $checkedConvert('start', (v) => DateTime.parse(v as String)),
          end: $checkedConvert('end', (v) => DateTime.parse(v as String)),
          $type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'type'},
    );

Map<String, dynamic> _$$SessionTalkToJson(_$SessionTalk instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'speakers': instance.speakers.map((e) => e.toJson()).toList(),
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'type': instance.$type,
    };

_$SessionSponsor _$$SessionSponsorFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SessionSponsor',
      json,
      ($checkedConvert) {
        final val = _$SessionSponsor(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          speakers: $checkedConvert(
              'speakers',
              (v) => (v as List<dynamic>)
                  .map((e) => Speaker.fromJson(e as Map<String, dynamic>))
                  .toList()),
          start: $checkedConvert('start', (v) => DateTime.parse(v as String)),
          end: $checkedConvert('end', (v) => DateTime.parse(v as String)),
          $type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'type'},
    );

Map<String, dynamic> _$$SessionSponsorToJson(_$SessionSponsor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'speakers': instance.speakers.map((e) => e.toJson()).toList(),
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'type': instance.$type,
    };

_$SessionEvent _$$SessionEventFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SessionEvent',
      json,
      ($checkedConvert) {
        final val = _$SessionEvent(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          start: $checkedConvert('start', (v) => DateTime.parse(v as String)),
          end: $checkedConvert('end', (v) => DateTime.parse(v as String)),
          $type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'type'},
    );

Map<String, dynamic> _$$SessionEventToJson(_$SessionEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'type': instance.$type,
    };

_$_Speaker _$$_SpeakerFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Speaker',
      json,
      ($checkedConvert) {
        final val = _$_Speaker(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          bio: $checkedConvert('bio', (v) => v as String),
          profilePicture:
              $checkedConvert('profile_picture', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'profilePicture': 'profile_picture'},
    );

Map<String, dynamic> _$$_SpeakerToJson(_$_Speaker instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bio': instance.bio,
      'profile_picture': instance.profilePicture,
    };

_$_SessionData _$$_SessionDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_SessionData',
      json,
      ($checkedConvert) {
        final val = _$_SessionData(
          items: $checkedConvert(
              'items',
              (v) => (v as Map<String, dynamic>).map(
                    (k, e) => MapEntry(
                        $enumDecode(_$RoomEnumMap, k),
                        (e as List<dynamic>)
                            .map((e) =>
                                Session.fromJson(e as Map<String, dynamic>))
                            .toList()),
                  )),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_SessionDataToJson(_$_SessionData instance) =>
    <String, dynamic>{
      'items': instance.items.map((k, e) =>
          MapEntry(_$RoomEnumMap[k]!, e.map((e) => e.toJson()).toList())),
    };

const _$RoomEnumMap = {
  Room.room1: 'room1',
  Room.room2: 'room2',
};
