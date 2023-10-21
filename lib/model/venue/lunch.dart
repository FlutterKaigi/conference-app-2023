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
    final copiedItems = [...items];
    final topRow = copiedItems.firstWhereOrNull((e) => e.id == 'id');
    if (topRow == null) {
      return this;
    }

    copiedItems.removeWhere((e) => e.id == topRow.id);

    if (sortOption.isById) {
      copiedItems.sort(((a, b) => int.parse(a.id).compareTo(int.parse(b.id))));
    } else if (sortOption.isAsc) {
      copiedItems.sort(
        ((a, b) => int.parse(a.routeTime).compareTo(int.parse(b.routeTime))),
      );
    } else if (sortOption.isDesc) {
      copiedItems.sort(
        ((a, b) => int.parse(b.routeTime).compareTo(int.parse(a.routeTime))),
      );
    }
    return StoreList(items: [topRow, ...copiedItems]);
  }
}

enum StoreSortOption {
  byId('リセット'),
  asc('昇順'),
  desc('降順'),
  ;

  const StoreSortOption(this.label);

  final String label;

  bool get isById => this == StoreSortOption.byId;
  bool get isAsc => this == StoreSortOption.asc;
  bool get isDesc => this == StoreSortOption.desc;
}
