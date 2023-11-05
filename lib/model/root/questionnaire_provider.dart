import 'package:conference_2023/model/firebase_crashlytics.dart';
import 'package:conference_2023/model/remote_config.dart';
import 'package:conference_2023/model/root/questionnaire.dart';
import 'package:conference_2023/util/extension/remote_config_ext.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'questionnaire_provider.g.dart';

@riverpod
Questionnaire questionnaire(
  QuestionnaireRef ref,
) {
  final remoteConfig = ref.watch(remoteConfigProvider);
  return Questionnaire.fromJson(
    remoteConfig.getJsonMapFromKey(RemoteConfigKey.questionnaire),
  );
}

@riverpod
Uri? questionnaireUrl(
  QuestionnaireUrlRef ref,
) {
  final questionnaire = ref.watch(questionnaireProvider);
  try {
    return Uri.parse(questionnaire.link);
  } on FormatException {
     ref.read(firebaseCrashlyticsProvider).recordError(
      Exception('Questionnaire URL is invalid.'),
      StackTrace.current,
    );
  }

  return null;
}

@riverpod
bool inProgressQuestionnaire(
  InProgressQuestionnaireRef ref,
) {
  final questionnaire = ref.watch(questionnaireProvider);
  return questionnaire.inProgress(DateTime.now());
}
