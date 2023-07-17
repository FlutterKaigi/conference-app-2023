import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'developer.freezed.dart';
part 'developer.g.dart';

@freezed
class DeveloperList with _$DeveloperList {
  const factory DeveloperList({
    required List<Developer> items,
  }) = _DeveloperList;

  factory DeveloperList.fromJson(Map<String, dynamic> json) =>
      _$DeveloperListFromJson(json);
}

@freezed
class Developer with _$Developer {
  const factory Developer({
    required String name,
    required String avatarUrl,
    required String url,
  }) = _Developer;

  factory Developer.fromJson(Map<String, dynamic> json) =>
      _$DeveloperFromJson(json);
}
