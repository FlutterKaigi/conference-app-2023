// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Session _$$_SessionFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Session',
      json,
      ($checkedConvert) {
        final val = _$_Session(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$SessionTypeEnumMap, v)),
          speakers: $checkedConvert(
              'speakers',
              (v) => (v as List<dynamic>)
                  .map((e) => Speaker.fromJson(e as Map<String, dynamic>))
                  .toList()),
          start: $checkedConvert('start', (v) => DateTime.parse(v as String)),
          end: $checkedConvert('end', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_SessionToJson(_$_Session instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': _$SessionTypeEnumMap[instance.type]!,
      'speakers': instance.speakers.map((e) => e.toJson()).toList(),
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
    };

const _$SessionTypeEnumMap = {
  SessionType.talk: 'talk',
  SessionType.sponsor: 'sponsor',
  SessionType.event: 'event',
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
