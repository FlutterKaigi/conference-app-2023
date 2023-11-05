import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/model/root/questionnaire_provider.dart';
import 'package:conference_2023/util/launch_in_external_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SessionQuestionnaireFab extends ConsumerWidget {
  const SessionQuestionnaireFab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inProgress = ref.watch(inProgressQuestionnaireProvider);
    if (!inProgress) {
      return const SizedBox.shrink();
    }

    final localization = ref.watch(localizationProvider);
    return FloatingActionButton.extended(
      onPressed: () async {
        final uri = ref.read(questionnaireUrlProvider);
        if (uri == null) {
          return;
        }

        await launchInExternalApp(uri);
      },
      icon: const Icon(Icons.question_answer),
      label: Text(localization.sessionQuestionnaire),
      tooltip: localization.sessionQuestionnaireTooltip,
    );
  }
}
