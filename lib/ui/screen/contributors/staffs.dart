import 'package:conference_2023/model/contributors/staff/staff_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
              foregroundImage: staffItem.userIcon != ''
                  ? NetworkImage(
                      staffItem.userIcon!,
                    )
                  : const NetworkImage(
                      'https://avatars.githubusercontent.com/u/79250595?v=4',
                    ),
            ),
            title: Text(
              staffItem.displayName,
            ),
          );
        },
      ),
    );
  }
}
