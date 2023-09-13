import 'dart:developer';

import 'package:conference_2023/model/remote_config.dart';
import 'package:conference_2023/ui/widget/selection_area_scaffold.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DebugScreen extends ConsumerWidget {
  const DebugScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SelectionAreaScaffold(
      appBar: AppBar(
        title: const Text('Debug'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Remote Config'),
            onTap: () async {
              final remoteConfig = ref.read(remoteConfigProvider);

              await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Remote Config'),
                  content: SingleChildScrollView(
                    child: Column(
                      children: [
                        ...remoteConfig
                            .getAll()
                            .map(
                              (key, value) => MapEntry(
                                key,
                                ListTile(
                                  title: Text('key: $key'),
                                  subtitle: Text('value: ${value.asString()}'),
                                ),
                              ),
                            )
                            .values,
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Close'),
                    ),
                  ],
                ),
              );
            },
          ),
          ListTile(
            title: const Text('FCM Token'),
            onTap: () async {
              final fcmToken = await FirebaseMessaging.instance.getToken();
              log('fcmToken: $fcmToken');

              if (!context.mounted) {
                return;
              }
              await showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('FCM Token'),
                  content: SingleChildScrollView(
                    child: SelectableText(
                      fcmToken ?? 'null(error)',
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Close'),
                    ),
                  ],
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Test firebase crashlytics'),
            onTap: () => throw Exception('Test Exception'),
          ),
        ],
      ),
    );
  }
}
