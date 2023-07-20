import 'package:conference_2023/model/contributors/staff/staff_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StaffListPage extends ConsumerWidget {
  const StaffListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(staffsProvider);

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
            leading: SizedBox(
              width: 48,
              height: 48,
              child: Image.network(
                staffItem.userIcon,
                fit: BoxFit.cover,
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
