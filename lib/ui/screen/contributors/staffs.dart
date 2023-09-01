import 'package:conference_2023/model/contributors/staff.dart';
import 'package:conference_2023/model/contributors/staff_provider.dart';
import 'package:conference_2023/util/launch_in_external_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// FlutterKaigi Icon
const _defaultIconUrl = 'https://avatars.githubusercontent.com/u/79250595?v=4';

class Staffs extends ConsumerWidget {
  const Staffs({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(staffListProvider);

    return switch (state) {
      AsyncData<List<Staff>>(value: final list) => ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            final staffItem = list[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                foregroundImage: NetworkImage(
                  staffItem.userIcon.isEmpty
                      ? _defaultIconUrl
                      : staffItem.userIcon,
                ),
              ),
              title: Text(staffItem.displayName),
              onTap: () async {
                final url = Uri.parse(staffItem.link);
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
