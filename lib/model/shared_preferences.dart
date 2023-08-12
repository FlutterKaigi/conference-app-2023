import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preferences.g.dart';

@riverpod
SharedPreferences sharedPreferences(
  SharedPreferencesRef ref,
) =>
    throw Exception('Provider was not initialized');

enum SharedPreferenceKey {
  themeMode('theme_mode'),
  localizationMode('localization_mode'),
  fontFamily('font_family'),
  ;

  const SharedPreferenceKey(this.value);

  final String value;
}
