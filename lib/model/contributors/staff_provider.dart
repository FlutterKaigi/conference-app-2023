import 'dart:convert';

import 'package:conference_2023/model/contributors/staff.dart';
import 'package:conference_2023/model/remote_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'staff_provider.g.dart';

@riverpod
Future<List<Staff>> staffList(
  StaffListRef ref,
) async {
  final remoteConfig = ref.watch(remoteConfigProvider);
  final staffList = StaffList.fromJson(
    json.decode(
      remoteConfig.getString(
        RemoteConfigKey.staff.key,
      ),
    ),
  );

  return staffList.items;
}
