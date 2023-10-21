import 'package:conference_2023/model/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'favorite_session_ids.g.dart';

@riverpod
class FavoriteSessionIdsNotifier extends _$FavoriteSessionIdsNotifier {
  String get _storageKey => SharedPreferenceKey.favoriteSessionIds.value;

  SharedPreferences get _sharedPreferences =>
      ref.read(sharedPreferencesProvider);

  @override
  List<String> build() {
    return _sharedPreferences.getStringList(_storageKey) ?? [];
  }

  Future<void> add(String id) async {
    await _updateFavoriteIds([...state, id]);
  }

  Future<void> remove(String id) async {
    await _updateFavoriteIds(state.where((e) => e != id).toList());
  }

  Future<void> _updateFavoriteIds(List<String> ids) async {
    state = ids;
    await _sharedPreferences.setStringList(_storageKey, state);
  }
}
