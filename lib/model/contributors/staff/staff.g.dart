// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Staff _$$_StaffFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Staff',
      json,
      ($checkedConvert) {
        final val = _$_Staff(
          displayName: $checkedConvert('displayName', (v) => v as String),
          image: $checkedConvert(
              'image', (v) => StaffImage.fromJson(v as Map<String, dynamic>)),
          sns: $checkedConvert(
              'sns',
              (v) => (v as List<dynamic>)
                  .map((e) => Sns.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_StaffToJson(_$_Staff instance) => <String, dynamic>{
      'displayName': instance.displayName,
      'image': instance.image.toJson(),
      'sns': instance.sns.map((e) => e.toJson()).toList(),
    };

_$_StaffImage _$$_StaffImageFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_StaffImage',
      json,
      ($checkedConvert) {
        final val = _$_StaffImage(
          altText: $checkedConvert('altText', (v) => v as String),
          height: $checkedConvert('height', (v) => v as int),
          width: $checkedConvert('width', (v) => v as int),
          src: $checkedConvert('src', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_StaffImageToJson(_$_StaffImage instance) =>
    <String, dynamic>{
      'altText': instance.altText,
      'height': instance.height,
      'width': instance.width,
      'src': instance.src,
    };

_$_Sns _$$_SnsFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Sns',
      json,
      ($checkedConvert) {
        final val = _$_Sns(
          type:
              $checkedConvert('type', (v) => $enumDecode(_$SnsTypeEnumMap, v)),
          value: $checkedConvert('value', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_SnsToJson(_$_Sns instance) => <String, dynamic>{
      'type': _$SnsTypeEnumMap[instance.type]!,
      'value': instance.value,
    };

const _$SnsTypeEnumMap = {
  SnsType.twitter: 'twitter',
  SnsType.github: 'github',
  SnsType.discord: 'discord',
  SnsType.qiita: 'qiita',
  SnsType.zenn: 'zenn',
  SnsType.note: 'note',
  SnsType.medium: 'medium',
  SnsType.url: 'url',
};
