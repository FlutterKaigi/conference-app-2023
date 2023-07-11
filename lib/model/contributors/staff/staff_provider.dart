import 'package:conference_2023/model/contributors/staff/staff.dart';
import 'package:conference_2023/model/contributors/staff/staff_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'staff_provider.g.dart';

@riverpod
Future<List<Staff>> staffs(StaffsRef ref) =>
    ref.watch(staffRepositoryProvider).fetchStaffItemsByMockData();
