import 'dart:convert';

import 'package:conference_2023/model/contributors/developer.dart';
import 'package:conference_2023/model/remote_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'developer_provider.g.dart';

@riverpod
Future<List<Developer>> developerList(
  DeveloperListRef ref,
) async {
  final remoteConfig = ref.watch(remoteConfigProvider);
  final developerList = DeveloperList.fromJson(
    json.decode(
      remoteConfig.getString(RemoteConfigKey.developers.key),
    ),
  );

  return developerList.items;
}
