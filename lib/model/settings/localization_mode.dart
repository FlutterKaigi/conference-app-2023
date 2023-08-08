import 'package:conference_2023/model/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'localization_mode.g.dart';

enum LocalizationMode {
  system,
  japanese,
  english,
}

@riverpod
class LocalizationModeNotifier extends _$LocalizationModeNotifier {
  String get _key => SharedPreferenceKey.localizationMode.value;

  @override
  LocalizationMode build() {
    final sharedPreferences = ref.watch(sharedPreferencesProvider);
    final lastLocalizationMode = sharedPreferences.getString(_key);

    return LocalizationMode.values.firstWhere(
      (element) => element.name == lastLocalizationMode,
      orElse: () => LocalizationMode.system,
    );
  }

  Future<void> update(LocalizationMode localizationMode) async {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    await sharedPreferences.setString(_key, localizationMode.name);

    state = localizationMode;
  }
}
