import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/model/preference/shared_preference_provider.dart';
import 'package:conference_2023/model/provider/localization_mode_notifier.dart';
import 'package:conference_2023/model/provider/theme_mode_notifier.dart';
import 'package:conference_2023/util/extension/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);

    return ListView(
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: context.spacing,
          ),
          title: Text(localization.settingsThemeMode),
          onTap: () async {
            final currentMode = ref.read(themeModeNotifierProvider);

            final result = await showConfirmationDialog<ThemeMode>(
              context: context,
              title: localization.settingsThemeMode,
              initialSelectedActionKey: currentMode,
              actions: [
                ...ThemeMode.values.map(
                  (mode) => AlertDialogAction(
                    key: mode,
                    label: switch (mode) {
                      ThemeMode.system => localization.settingsThemeModeSystem,
                      ThemeMode.light => localization.settingsThemeModeLight,
                      ThemeMode.dark => localization.settingsThemeModeDark,
                    },
                  ),
                ),
              ],
            );

            if (result == null) {
              /// cancel
              return;
            }

            await ref.read(themeModeNotifierProvider.notifier).update(result);
          },
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: context.spacing,
          ),
          title: Text(localization.settingsLocalizationMode),
          onTap: () async {
            final currentMode = ref.read(localizationModeNotifierProvider);

            final result = await showConfirmationDialog<LocalizationMode>(
              context: context,
              title: localization.settingsLocalizationMode,
              initialSelectedActionKey: currentMode,
              actions: [
                ...LocalizationMode.values.map(
                  (mode) => AlertDialogAction(
                    key: mode,
                    label: switch (mode) {
                      LocalizationMode.system =>
                        localization.settingsLocalizationModeSystem,
                      LocalizationMode.japanese =>
                        localization.settingsLocalizationModeJa,
                      LocalizationMode.english =>
                        localization.settingsLocalizationModeEn,
                    },
                  ),
                ),
              ],
            );

            if (result == null) {
              /// cancel
              return;
            }

            await ref
                .read(localizationModeNotifierProvider.notifier)
                .update(result);
          },
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: context.spacing,
          ),
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
              ..invalidate(localizationModeNotifierProvider);
          },
        ),
      ],
    );
  }
}
