// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionTalkImpl _$$SessionTalkImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SessionTalkImpl',
      json,
      ($checkedConvert) {
        final val = _$SessionTalkImpl(
          id: $checkedConvert('id', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          title: $checkedConvert(
              'title', (v) => LocaleText.fromJson(v as Map<String, dynamic>)),
          description: $checkedConvert('description',
              (v) => LocaleText.fromJson(v as Map<String, dynamic>)),
          speaker: $checkedConvert(
              'speaker', (v) => Speaker.fromJson(v as Map<String, dynamic>)),
          start: $checkedConvert('start',
              (v) => const JpDateTimeConverter().fromJson(v as String)),
          end: $checkedConvert(
              'end', (v) => const JpDateTimeConverter().fromJson(v as String)),
          $type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'type'},
    );

Map<String, dynamic> _$$SessionTalkImplToJson(_$SessionTalkImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'title': instance.title.toJson(),
      'description': instance.description.toJson(),
      'speaker': instance.speaker.toJson(),
      'start': const JpDateTimeConverter().toJson(instance.start),
      'end': const JpDateTimeConverter().toJson(instance.end),
      'type': instance.$type,
    };

_$SessionSponsorImpl _$$SessionSponsorImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SessionSponsorImpl',
      json,
      ($checkedConvert) {
        final val = _$SessionSponsorImpl(
          id: $checkedConvert('id', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          title: $checkedConvert(
              'title', (v) => LocaleText.fromJson(v as Map<String, dynamic>)),
          description: $checkedConvert('description',
              (v) => LocaleText.fromJson(v as Map<String, dynamic>)),
          speaker: $checkedConvert(
              'speaker', (v) => Speaker.fromJson(v as Map<String, dynamic>)),
          start: $checkedConvert('start',
              (v) => const JpDateTimeConverter().fromJson(v as String)),
          end: $checkedConvert(
              'end', (v) => const JpDateTimeConverter().fromJson(v as String)),
          $type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'type'},
    );

Map<String, dynamic> _$$SessionSponsorImplToJson(
        _$SessionSponsorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'title': instance.title.toJson(),
      'description': instance.description.toJson(),
      'speaker': instance.speaker.toJson(),
      'start': const JpDateTimeConverter().toJson(instance.start),
      'end': const JpDateTimeConverter().toJson(instance.end),
      'type': instance.$type,
    };

_$SessionEventImpl _$$SessionEventImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SessionEventImpl',
      json,
      ($checkedConvert) {
        final val = _$SessionEventImpl(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert(
              'title', (v) => LocaleText.fromJson(v as Map<String, dynamic>)),
          start: $checkedConvert('start',
              (v) => const JpDateTimeConverter().fromJson(v as String)),
          end: $checkedConvert(
              'end', (v) => const JpDateTimeConverter().fromJson(v as String)),
          $type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'type'},
    );

Map<String, dynamic> _$$SessionEventImplToJson(_$SessionEventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title.toJson(),
      'start': const JpDateTimeConverter().toJson(instance.start),
      'end': const JpDateTimeConverter().toJson(instance.end),
      'type': instance.$type,
    };

_$SpeakerImpl _$$SpeakerImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SpeakerImpl',
      json,
      ($checkedConvert) {
        final val = _$SpeakerImpl(
          name: $checkedConvert('name', (v) => v as String),
          kana: $checkedConvert('kana', (v) => v as String),
          twitter: $checkedConvert('twitter', (v) => v as String? ?? ''),
          avatarUrl: $checkedConvert('avatar_url', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'avatarUrl': 'avatar_url'},
    );

Map<String, dynamic> _$$SpeakerImplToJson(_$SpeakerImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'kana': instance.kana,
      'twitter': instance.twitter,
      'avatar_url': instance.avatarUrl,
    };

_$LocaleTextImpl _$$LocaleTextImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$LocaleTextImpl',
      json,
      ($checkedConvert) {
        final val = _$LocaleTextImpl(
          ja: $checkedConvert('ja', (v) => v as String),
          en: $checkedConvert('en', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$LocaleTextImplToJson(_$LocaleTextImpl instance) =>
    <String, dynamic>{
      'ja': instance.ja,
      'en': instance.en,
    };

_$SessionDataImpl _$$SessionDataImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SessionDataImpl',
      json,
      ($checkedConvert) {
        final val = _$SessionDataImpl(
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

Map<String, dynamic> _$$SessionDataImplToJson(_$SessionDataImpl instance) =>
    <String, dynamic>{
      'items': instance.items.map((k, e) =>
          MapEntry(_$RoomEnumMap[k]!, e.map((e) => e.toJson()).toList())),
    };

const _$RoomEnumMap = {
  Room.room1: 'room1',
  Room.room2: 'room2',
};
