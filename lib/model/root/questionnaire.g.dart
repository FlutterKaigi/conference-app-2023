// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionnaire.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionnaireImpl _$$QuestionnaireImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$QuestionnaireImpl',
      json,
      ($checkedConvert) {
        final val = _$QuestionnaireImpl(
          link: $checkedConvert('link', (v) => v as String? ?? ''),
          startDateTime: $checkedConvert('start_date_time',
              (v) => v == null ? null : DateTime.parse(v as String)),
          endDateTime: $checkedConvert('end_date_time',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'startDateTime': 'start_date_time',
        'endDateTime': 'end_date_time'
      },
    );

Map<String, dynamic> _$$QuestionnaireImplToJson(_$QuestionnaireImpl instance) =>
    <String, dynamic>{
      'link': instance.link,
      'start_date_time': instance.startDateTime?.toIso8601String(),
      'end_date_time': instance.endDateTime?.toIso8601String(),
    };
