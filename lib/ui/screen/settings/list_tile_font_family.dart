import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/model/settings/font_family.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListTileFontFamily extends ConsumerWidget {
  const ListTileFontFamily({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);

    return ListTile(
      title: Text(localization.settingsFontFamily),
      onTap: () async {
        final fontFamily = ref.read(fontFamilyNotifierProvider);

        final result = await showConfirmationDialog<FontFamily>(
          context: context,
          title: localization.settingsFontFamily,
          initialSelectedActionKey: fontFamily,
          toggleable: false,
          actions: [
            ...FontFamily.values.map(
              (family) => AlertDialogAction(
                key: family,
                label: switch (family) {
                  FontFamily.system => 'System',
                  FontFamily.bizUdGothic => 'BIZ UDGothic',
                  FontFamily.sawarabiGothic => 'Sawarabi Gothic',
                  FontFamily.mPlus1p => 'M PLUS 1p',
                  FontFamily.kaiseiOpti => 'Kaisei Opti',
                  FontFamily.yuseiMagic => 'Yusei Magic',
                  FontFamily.dotGothic16 => 'DotGothic16',
                  FontFamily.hachiMaruPop => 'Hachi Maru Pop',
                },
              ),
            ),
          ],
        );

        if (result == null) {
          /// cancel
          return;
        }

        await ref.read(fontFamilyNotifierProvider.notifier).update(result);
      },
    );
  }
}
