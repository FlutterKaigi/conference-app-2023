import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/model/settings/localization_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListTileLocalizationMode extends ConsumerWidget {
  const ListTileLocalizationMode({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);

    return ListTile(
      title: Text(localization.settingsLocalizationMode),
      onTap: () async {
        final currentMode = ref.read(localizationModeNotifierProvider);

        final result = await showConfirmationDialog<LocalizationMode>(
          context: context,
          title: localization.settingsLocalizationMode,
          initialSelectedActionKey: currentMode,
          toggleable: false,
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
    );
  }
}
