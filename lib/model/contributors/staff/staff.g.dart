// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StaffList _$$_StaffListFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_StaffList',
      json,
      ($checkedConvert) {
        final val = _$_StaffList(
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) => Staff.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_StaffListToJson(_$_StaffList instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

_$_Staff _$$_StaffFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Staff',
      json,
      ($checkedConvert) {
        final val = _$_Staff(
          displayName: $checkedConvert('display_name', (v) => v as String),
          userIcon: $checkedConvert('user_icon', (v) => v as String? ?? ''),
          github: $checkedConvert('github', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'displayName': 'display_name',
        'userIcon': 'user_icon'
      },
    );

Map<String, dynamic> _$$_StaffToJson(_$_Staff instance) => <String, dynamic>{
      'display_name': instance.displayName,
      'user_icon': instance.userIcon,
      'github': instance.github,
    };
