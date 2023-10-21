// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lunch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LunchListImpl _$$LunchListImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$LunchListImpl',
      json,
      ($checkedConvert) {
        final val = _$LunchListImpl(
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) => Store.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$LunchListImplToJson(_$LunchListImpl instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

_$LunchImpl _$$LunchImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$LunchImpl',
      json,
      ($checkedConvert) {
        final val = _$LunchImpl(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          routeTime: $checkedConvert('route_time', (v) => v as String),
          recommendedMenu:
              $checkedConvert('recommended_menu', (v) => v as String),
          comment: $checkedConvert('comment', (v) => v as String),
          externalLink: $checkedConvert('external_link', (v) => v as String),
          navitimeMapLink:
              $checkedConvert('navitime_map_link', (v) => v as String),
          googleMapLink: $checkedConvert('google_map_link', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'routeTime': 'route_time',
        'recommendedMenu': 'recommended_menu',
        'externalLink': 'external_link',
        'navitimeMapLink': 'navitime_map_link',
        'googleMapLink': 'google_map_link'
      },
    );

Map<String, dynamic> _$$LunchImplToJson(_$LunchImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'route_time': instance.routeTime,
      'recommended_menu': instance.recommendedMenu,
      'comment': instance.comment,
      'external_link': instance.externalLink,
      'navitime_map_link': instance.navitimeMapLink,
      'google_map_link': instance.googleMapLink,
    };
