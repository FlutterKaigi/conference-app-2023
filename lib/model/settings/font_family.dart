import 'package:conference_2023/model/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'font_family.g.dart';

enum FontFamily {
  system,
  bizUdGothic,
  sawarabiGothic,
  mPlus1p,
  kaiseiOpti,
  yuseiMagic,
  dotGothic16,
  hachiMaruPop,
}

@riverpod
class FontFamilyNotifier extends _$FontFamilyNotifier {
  String get _key => SharedPreferenceKey.fontFamily.value;

  @override
  FontFamily build() {
    final sharedPreferences = ref.watch(sharedPreferencesProvider);
    final fontFamily = sharedPreferences.getString(_key);

    return FontFamily.values.firstWhere(
      (element) => element.name == fontFamily,
      orElse: () => FontFamily.system,
    );
  }

  Future<void> update(FontFamily fontFamily) async {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    await sharedPreferences.setString(_key, fontFamily.name);

    state = fontFamily;
  }
}
