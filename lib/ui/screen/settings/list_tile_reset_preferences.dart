import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/model/settings/font_family.dart';
import 'package:conference_2023/model/settings/localization_mode.dart';
import 'package:conference_2023/model/settings/theme_mode.dart';
import 'package:conference_2023/model/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListTileResetPreferences extends ConsumerWidget {
  const ListTileResetPreferences({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);

    return ListTile(
      title: Text(localization.settingsResetPreferences),
      onTap: () async {
        final result = await showOkCancelAlertDialog(
          context: context,
          title: localization.settingsResetPreferences,
        );

        if (result == OkCancelResult.cancel) {
          /// cancel
          return;
        }

        await ref.read(sharedPreferencesProvider).clear();

        /// invalidate SharedPreferencesProvider
        ref.invalidate(sharedPreferencesProvider);

        /// invalidate all providers which depend on [sharedPreferencesProvider]
        ref
          ..invalidate(themeModeNotifierProvider)
          ..invalidate(localizationModeNotifierProvider)
          ..invalidate(fontFamilyNotifierProvider);
      },
    );
  }
}
