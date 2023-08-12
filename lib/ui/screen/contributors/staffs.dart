import 'package:conference_2023/model/contributors/staff_provider.dart';
import 'package:conference_2023/util/launch_in_external_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// FlutterKaigi Icon
const defaultIconImage = 'https://avatars.githubusercontent.com/u/79250595?v=4';

class Staffs extends ConsumerWidget {
  const Staffs({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(staffListProvider);

    return state.when(
      loading: () => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
      error: (error, stackTrace) => Center(
        child: Text(
          '$error',
        ),
      ),
      data: (items) => ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final staffItem = items[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundImage: NetworkImage(
                staffItem.userIcon.isEmpty
                    ? defaultIconImage
                    : staffItem.userIcon,
              ),
            ),
            title: Text(
              staffItem.displayName,
            ),
            onTap: () async {
              final url = Uri.parse(staffItem.link);
              await launchInExternalApp(url);
            },
          );
        },
      ),
    );
  }
}
