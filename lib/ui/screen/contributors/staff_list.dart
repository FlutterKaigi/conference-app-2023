import 'package:conference_2023/model/contributors/staff/staff.dart';
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
        child: CircularProgressIndicator(),
      ),
      error: (error, stackTrace) => Center(
        child: Text(
          '$error',
        ),
      ),
      data: (staffItems) => ListView.builder(
        itemCount: staffItems.length,
        itemBuilder: (context, index) {
          final Staff staffItem = staffItems[index];
          return ListTile(
            leading: const Icon(Icons.account_circle),
            title: Text(
              staffItem.displayName,
            ),
          );
        },
      ),
    );
  }
}
