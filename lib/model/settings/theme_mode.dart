import 'package:conference_2023/model/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_mode.g.dart';

@riverpod
class ThemeModeNotifier extends _$ThemeModeNotifier {
  String get _key => SharedPreferenceKey.themeMode.value;

  @override
  ThemeMode build() {
    final sharedPreferences = ref.watch(sharedPreferencesProvider);
    final lastThemeMode = sharedPreferences.getString(_key);

    return ThemeMode.values.firstWhere(
      (element) => element.name == lastThemeMode,
      orElse: () => ThemeMode.system,
    );
  }

  Future<void> update(ThemeMode themeMode) async {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    await sharedPreferences.setString(_key, themeMode.name);

    state = themeMode;
  }
}
