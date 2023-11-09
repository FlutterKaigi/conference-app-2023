import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/model/settings/theme_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListTileThemeMode extends ConsumerWidget {
  const ListTileThemeMode({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);

    return ListTile(
      title: Text(localization.settingsThemeMode),
      onTap: () async {
        final currentMode = ref.read(themeModeNotifierProvider);

        final result = await showConfirmationDialog<ThemeMode>(
          context: context,
          title: localization.settingsThemeMode,
          initialSelectedActionKey: currentMode,
          toggleable: false,
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
    );
  }
}
