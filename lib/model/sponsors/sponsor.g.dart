// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sponsor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SponsorListImpl _$$SponsorListImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SponsorListImpl',
      json,
      ($checkedConvert) {
        final val = _$SponsorListImpl(
          platinum: $checkedConvert(
              'platinum',
              (v) => (v as List<dynamic>)
                  .map((e) => Sponsor.fromJson(e as Map<String, dynamic>))
                  .toList()),
          gold: $checkedConvert(
              'gold',
              (v) => (v as List<dynamic>)
                  .map((e) => Sponsor.fromJson(e as Map<String, dynamic>))
                  .toList()),
          silver: $checkedConvert(
              'silver',
              (v) => (v as List<dynamic>)
                  .map((e) => Sponsor.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SponsorListImplToJson(_$SponsorListImpl instance) =>
    <String, dynamic>{
      'platinum': instance.platinum.map((e) => e.toJson()).toList(),
      'gold': instance.gold.map((e) => e.toJson()).toList(),
      'silver': instance.silver.map((e) => e.toJson()).toList(),
    };

_$SponsorImpl _$$SponsorImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SponsorImpl',
      json,
      ($checkedConvert) {
        final val = _$SponsorImpl(
          sponsorName: $checkedConvert('sponsor_name', (v) => v as String),
          sponsorLinkUrl:
              $checkedConvert('sponsor_link_url', (v) => v as String),
          sponsorLogoUrl:
              $checkedConvert('sponsor_logo_url', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'sponsorName': 'sponsor_name',
        'sponsorLinkUrl': 'sponsor_link_url',
        'sponsorLogoUrl': 'sponsor_logo_url'
      },
    );

Map<String, dynamic> _$$SponsorImplToJson(_$SponsorImpl instance) =>
    <String, dynamic>{
      'sponsor_name': instance.sponsorName,
      'sponsor_link_url': instance.sponsorLinkUrl,
      'sponsor_logo_url': instance.sponsorLogoUrl,
    };
