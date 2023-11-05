import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionnaire.freezed.dart';
part 'questionnaire.g.dart';

@freezed
class Questionnaire with _$Questionnaire {
  const factory Questionnaire({
    @Default('') String link,
    required DateTime? startDateTime,
    required DateTime? endDateTime,
  }) = _Questionnaire;

  factory Questionnaire.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireFromJson(json);
}

extension QuestionnaireExt on Questionnaire {
  bool inProgress(DateTime now) {
    if (startDateTime == null || endDateTime == null) {
      return false;
    }

    return startDateTime!.isBefore(now) && endDateTime!.isAfter(now);
  }
}
