import 'package:conference_2023/model/preference/shared_preference_enum.dart';
import 'package:conference_2023/model/preference/shared_preference_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'localization_mode_notifier.g.dart';

enum LocalizationMode {
  system,
  japanese,
  english,
}

@riverpod
class LocalizationModeNotifier extends _$LocalizationModeNotifier {
  String get _key => PreferenceKey.localizationMode.value;

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
