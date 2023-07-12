// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeveloperList _$$_DeveloperListFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_DeveloperList',
      json,
      ($checkedConvert) {
        final val = _$_DeveloperList(
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) => Developer.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_DeveloperListToJson(_$_DeveloperList instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

_$_Developer _$$_DeveloperFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Developer',
      json,
      ($checkedConvert) {
        final val = _$_Developer(
          name: $checkedConvert('name', (v) => v as String),
          avatarUrl: $checkedConvert('avatar_url', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'avatarUrl': 'avatar_url'},
    );

Map<String, dynamic> _$$_DeveloperToJson(_$_Developer instance) =>
    <String, dynamic>{
      'name': instance.name,
      'avatar_url': instance.avatarUrl,
      'url': instance.url,
    };
