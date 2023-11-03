import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lunch.freezed.dart';
part 'lunch.g.dart';

@freezed
class StoreList with _$StoreList {
  const factory StoreList({
    required List<Store> items,
  }) = _LunchList;

  factory StoreList.fromJson(Map<String, dynamic> json) =>
      _$StoreListFromJson(json);
}

@freezed
class Store with _$Store {
  const factory Store({
    required String id,
    required String name,
    required String routeTime,
    required String recommendedMenu,
    required String comment,
    required String externalLink,
    required String navitimeMapLink,
    required String googleMapLink,
  }) = _Lunch;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}

extension StoreListEx on StoreList {
  StoreList getSortedStoreListByOption(StoreSortOption sortOption) {
    final topRow = items.first;
    final valueRows = items.skip(1);
    final sortedRows = switch (sortOption) {
      StoreSortOption.byId => valueRows.sorted(
          (a, b) => int.parse(a.id).compareTo(int.parse(b.id)),
        ),
      StoreSortOption.asc => valueRows.sorted(
          (a, b) => int.parse(a.routeTime).compareTo(int.parse(b.routeTime)),
        ),
      StoreSortOption.desc => valueRows.sorted(
          (a, b) => int.parse(b.routeTime).compareTo(int.parse(a.routeTime)),
        ),
    };
    return StoreList(
      items: [topRow, ...sortedRows],
    );
  }
}

enum StoreSortOption {
  byId,
  asc,
  desc,
}
