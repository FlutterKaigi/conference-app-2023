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
  favoriteSessionIds('favorite_session_ids'),
  userName('user_name'),
  profileWebsiteUrl('profile_website_url'),
  ;

  const SharedPreferenceKey(this.value);

  final String value;
}
