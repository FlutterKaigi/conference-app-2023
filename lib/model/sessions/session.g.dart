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
          url: $checkedConvert('url', (v) => v as String),
          title: $checkedConvert(
              'title', (v) => LocaleText.fromJson(v as Map<String, dynamic>)),
          description: $checkedConvert('description',
              (v) => LocaleText.fromJson(v as Map<String, dynamic>)),
          speaker: $checkedConvert(
              'speaker', (v) => Speaker.fromJson(v as Map<String, dynamic>)),
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
      'url': instance.url,
      'title': instance.title.toJson(),
      'description': instance.description.toJson(),
      'speaker': instance.speaker.toJson(),
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
          url: $checkedConvert('url', (v) => v as String),
          title: $checkedConvert(
              'title', (v) => LocaleText.fromJson(v as Map<String, dynamic>)),
          description: $checkedConvert('description',
              (v) => LocaleText.fromJson(v as Map<String, dynamic>)),
          speaker: $checkedConvert(
              'speaker', (v) => Speaker.fromJson(v as Map<String, dynamic>)),
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
      'url': instance.url,
      'title': instance.title.toJson(),
      'description': instance.description.toJson(),
      'speaker': instance.speaker.toJson(),
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
          title: $checkedConvert(
              'title', (v) => LocaleText.fromJson(v as Map<String, dynamic>)),
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
      'title': instance.title.toJson(),
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'type': instance.$type,
    };

_$_Speaker _$$_SpeakerFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Speaker',
      json,
      ($checkedConvert) {
        final val = _$_Speaker(
          name: $checkedConvert('name', (v) => v as String),
          kana: $checkedConvert('kana', (v) => v as String),
          twitter: $checkedConvert('twitter', (v) => v as String? ?? ''),
          avatarUrl: $checkedConvert('avatar_url', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'avatarUrl': 'avatar_url'},
    );

Map<String, dynamic> _$$_SpeakerToJson(_$_Speaker instance) =>
    <String, dynamic>{
      'name': instance.name,
      'kana': instance.kana,
      'twitter': instance.twitter,
      'avatar_url': instance.avatarUrl,
    };

_$_LocaleText _$$_LocaleTextFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_LocaleText',
      json,
      ($checkedConvert) {
        final val = _$_LocaleText(
          ja: $checkedConvert('ja', (v) => v as String),
          en: $checkedConvert('en', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_LocaleTextToJson(_$_LocaleText instance) =>
    <String, dynamic>{
      'ja': instance.ja,
      'en': instance.en,
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
