import 'package:conference_2023/model/contributors/developer_provider.dart';
import 'package:conference_2023/util/launch_in_external_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Developers extends ConsumerWidget {
  const Developers({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(developerListProvider);

    return switch (state) {
      AsyncData(value: final list) => ListView.builder(
          primary: true,
          padding: const EdgeInsets.symmetric(
            vertical: 8,
          ),
          itemCount: list.length,
          itemBuilder: (context, index) {
            final developer = list[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  developer.avatarUrl,
                ),
              ),
              title: Text(developer.name),
              onTap: () async {
                final url = Uri.parse(developer.url);
                await launchInExternalApp(url);
              },
            );
          },
        ),
      AsyncError(error: final error) => Center(
          child: Text(error.toString()),
        ),
      _ => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
    };
  }
}
