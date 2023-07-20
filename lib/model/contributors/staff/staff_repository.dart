import 'dart:convert';

import 'package:conference_2023/model/contributors/staff/staff.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'staff_repository.g.dart';

@riverpod
StaffRepository staffRepository(StaffRepositoryRef ref) =>
    const StaffRepository();

class StaffRepository {
  const StaffRepository();

  Future<List<Staff>> fetchStaffItemsByMockData() async {
    await Future<void>.delayed(const Duration(milliseconds: 500));
    final jsonResult = json.decode(mockStafDataBody) as Map<String, dynamic>;
    final itemsJson = jsonResult['items'] as List<dynamic>;
    return itemsJson
        .map(
          (e) => Staff.fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }
}

const mockStafDataBody = '''
{
    "items": [
        {
            "display_name": "SampleUser_01",
            "user_icon": "https://avatars.githubusercontent.com/u/79250595?v=4",
            "github": "https://github.com"
        },
        {
            "display_name": "SampleUser_02",
            "user_icon": "https://avatars.githubusercontent.com/u/79250595?v=4",
            "github": "https://github.com"
        },
        {
            "display_name": "SampleUser_03",
            "user_icon": "https://avatars.githubusercontent.com/u/79250595?v=4",
            "github": "https://github.com"
        }
    ]
}
''';
