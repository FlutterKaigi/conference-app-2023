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
