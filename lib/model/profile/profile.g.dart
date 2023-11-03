// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ProfileImpl',
      json,
      ($checkedConvert) {
        final val = _$ProfileImpl(
          id: $checkedConvert('id', (v) => v as String? ?? ''),
          name: $checkedConvert('name', (v) => v as String? ?? ''),
          websiteUrl: $checkedConvert('website_url', (v) => v as String? ?? ''),
        );
        return val;
      },
      fieldKeyMap: const {'websiteUrl': 'website_url'},
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'website_url': instance.websiteUrl,
    };
