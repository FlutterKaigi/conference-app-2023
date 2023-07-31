import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'staff.freezed.dart';
part 'staff.g.dart';

@freezed
class StaffList with _$StaffList {
  const factory StaffList({
    required List<Staff> items,
  }) = _StaffList;

  factory StaffList.fromJson(Map<String, dynamic> json) =>
      _$StaffListFromJson(json);
}

@freezed
class Staff with _$Staff {
  const factory Staff({
    required String displayName,
    @Default('') String userIcon,
    required String link,
  }) = _Staff;

  factory Staff.fromJson(Map<String, dynamic> json) => _$StaffFromJson(json);
}
