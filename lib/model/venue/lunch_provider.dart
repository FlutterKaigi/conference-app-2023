import 'dart:convert';

import 'package:conference_2023/model/remote_config.dart';
import 'package:conference_2023/model/venue/lunch.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lunch_provider.g.dart';

@riverpod
StoreList storeList(
  StoreListRef ref,
) {
  final remoteConfig = ref.watch(remoteConfigProvider);
  return StoreList.fromJson(
    json.decode(
      remoteConfig.getString(
        RemoteConfigKey.lunch.key,
      ),
    ),
  );
}
