import 'dart:convert';

import 'package:conference_2023/model/remote_config.dart';
import 'package:conference_2023/model/sponsors/sponsor.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sponsor_provider.g.dart';

@riverpod
Future<Sponsors> sponsorList(
  SponsorListRef ref,
) async {
  final remoteConfig = ref.watch(remoteConfigProvider);
  return Sponsors.fromJson(
    json.decode(
      remoteConfig.getString(
        RemoteConfigKey.sponsor.key,
      ),
    ),
  );
}
