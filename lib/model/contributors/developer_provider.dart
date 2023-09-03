import 'package:conference_2023/model/contributors/developer.dart';
import 'package:conference_2023/model/remote_config.dart';
import 'package:conference_2023/util/extension/remove_config_ext.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'developer_provider.g.dart';

@riverpod
Future<List<Developer>> developerList(
  DeveloperListRef ref,
) async {
  final remoteConfig = ref.watch(remoteConfigProvider);
  final developerList = DeveloperList.fromJson(
    remoteConfig.getJsonMapFromKey(RemoteConfigKey.developer),
  );

  return developerList.items;
}
