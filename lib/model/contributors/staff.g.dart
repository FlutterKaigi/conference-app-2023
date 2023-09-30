// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaffListImpl _$$StaffListImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$StaffListImpl',
      json,
      ($checkedConvert) {
        final val = _$StaffListImpl(
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) => Staff.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$StaffListImplToJson(_$StaffListImpl instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

_$StaffImpl _$$StaffImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$StaffImpl',
      json,
      ($checkedConvert) {
        final val = _$StaffImpl(
          displayName: $checkedConvert('display_name', (v) => v as String),
          userIcon: $checkedConvert('user_icon', (v) => v as String? ?? ''),
          link: $checkedConvert('link', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'displayName': 'display_name',
        'userIcon': 'user_icon'
      },
    );

Map<String, dynamic> _$$StaffImplToJson(_$StaffImpl instance) =>
    <String, dynamic>{
      'display_name': instance.displayName,
      'user_icon': instance.userIcon,
      'link': instance.link,
    };
