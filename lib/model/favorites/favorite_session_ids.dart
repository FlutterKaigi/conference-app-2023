import 'package:conference_2023/model/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorite_session_ids.g.dart';

@riverpod
class FavoriteSessionIdsNotifier extends _$FavoriteSessionIdsNotifier {
  String get _key => SharedPreferenceKey.favoriteSessionIds.value;

  @override
  List<String> build() {
    final sharedPreferences = ref.watch(sharedPreferencesProvider);
    return sharedPreferences.getStringList(_key) ?? const [];
  }

  Future<void> add(String id) async {
    await _updateFavoriteSessionIds([...state, id]);
  }

  Future<void> remove(String id) async {
    await _updateFavoriteSessionIds([...state.where((e) => e != id)]);
  }

  Future<void> _updateFavoriteSessionIds(List<String> ids) async {
    final sharedPreferences = ref.read(sharedPreferencesProvider);
    await sharedPreferences.setStringList(_key, ids);
    state = ids;
  }
}
