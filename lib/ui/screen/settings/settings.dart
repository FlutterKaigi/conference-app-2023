import 'package:conference_2023/ui/screen/settings/list_tile_font_family.dart';
import 'package:conference_2023/ui/screen/settings/list_tile_localization_mode.dart';
import 'package:conference_2023/ui/screen/settings/list_tile_push_notification.dart';
import 'package:conference_2023/ui/screen/settings/list_tile_reset_preferences.dart';
import 'package:conference_2023/ui/screen/settings/list_tile_theme_mode.dart';
import 'package:conference_2023/ui/widget/scroll_controller_notification.dart';
import 'package:conference_2023/util/extension/build_context_ext.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentTheme = Theme.of(context);
    final settingsPageTheme = currentTheme.copyWith(
      listTileTheme: currentTheme.listTileTheme.copyWith(
        contentPadding: EdgeInsets.symmetric(
          horizontal: context.spacing,
        ),
      ),
    );

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ScrollControllerNotification(
        controller: PrimaryScrollController.of(context),
      ).dispatch(context);
    });

    return Theme(
      data: settingsPageTheme,
      child: ListView(
        primary: true,
        children: const [
          if (!kIsWeb) ListTilePushNotification(),
          ListTileThemeMode(),
          ListTileLocalizationMode(),
          ListTileFontFamily(),
          ListTileResetPreferences(),
        ],
      ),
    );
  }
}
