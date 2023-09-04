import 'package:conference_2023/model/contributors/staff.dart';
import 'package:conference_2023/model/remote_config.dart';
import 'package:conference_2023/util/extension/remote_config_ext.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'staff_provider.g.dart';

@riverpod
Future<List<Staff>> staffList(
  StaffListRef ref,
) async {
  final remoteConfig = ref.watch(remoteConfigProvider);
  final staffList = StaffList.fromJson(
    remoteConfig.getJsonMapFromKey(RemoteConfigKey.staff),
  );

  return staffList.items;
}
