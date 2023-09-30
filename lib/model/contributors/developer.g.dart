// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'developer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeveloperListImpl _$$DeveloperListImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DeveloperListImpl',
      json,
      ($checkedConvert) {
        final val = _$DeveloperListImpl(
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) => Developer.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$DeveloperListImplToJson(_$DeveloperListImpl instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

_$DeveloperImpl _$$DeveloperImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$DeveloperImpl',
      json,
      ($checkedConvert) {
        final val = _$DeveloperImpl(
          name: $checkedConvert('name', (v) => v as String),
          avatarUrl: $checkedConvert('avatar_url', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'avatarUrl': 'avatar_url'},
    );

Map<String, dynamic> _$$DeveloperImplToJson(_$DeveloperImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'avatar_url': instance.avatarUrl,
      'url': instance.url,
    };
