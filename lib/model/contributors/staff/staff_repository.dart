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
    "skip": 0,
    "limit": 100,
    "total": 2,
    "items": [
        {
            "_id": "646e1a03713a3e21a252c79b",
            "_sys": {
                "raw": {
                    "createdAt": "2023-05-24T14:06:59.211Z",
                    "updatedAt": "2023-05-25T10:30:44.635Z",
                    "firstPublishedAt": "2023-05-24T14:06:59.211Z",
                    "publishedAt": "2023-05-25T10:30:44.635Z"
                },
                "customOrder": 2,
                "createdAt": "2023-05-24T14:06:59.211Z",
                "updatedAt": "2023-05-25T10:30:44.635Z"
            },
            "displayName": "FlutterKaigi 2023",
            "image": {
                "_id": "646e0985beb9b686e8806757",
                "altText": "",
                "description": "",
                "fileName": "FlutterKaigi.png",
                "fileSize": 8181,
                "fileType": "image/jpeg",
                "height": 300,
                "metadata": {},
                "src": "https://pbs.twimg.com/profile_images/1597197332948262912/Q4PO_DK-_400x400.jpg",
                "title": "",
                "width": 300
            },
            "introduction": "FlutterKaigi 2023 Organization",
            "sns": [
              {
                "type": "twitter",
                "value": "FlutterKaigi"
              },
              {
                "type": "github",
                "value": "FlutterKaigi"
              },
              {
                "type": "zenn",
                "value": "zenn"
              },
              {
                "type": "note",
                "value": "info"
              },
              {
                "type": "url",
                "value": "https://flutterkaigi.jp"
              }
            ]
        },
         {
            "_id": "646e1a03713a3e21a252c79b",
            "_sys": {
                "raw": {
                    "createdAt": "2023-05-24T14:06:59.211Z",
                    "updatedAt": "2023-05-25T10:30:44.635Z",
                    "firstPublishedAt": "2023-05-24T14:06:59.211Z",
                    "publishedAt": "2023-05-25T10:30:44.635Z"
                },
                "customOrder": 2,
                "createdAt": "2023-05-24T14:06:59.211Z",
                "updatedAt": "2023-05-25T10:30:44.635Z"
            },
            "displayName": "Aaaaa Bbbbb",
            "image": {
                "_id": "646e0985beb9b686e8806757",
                "altText": "",
                "description": "",
                "fileName": "FlutterKaigi.png",
                "fileSize": 8181,
                "fileType": "image/jpeg",
                "height": 300,
                "metadata": {},
                "src": "https://placehold.jp/150x150.png",
                "title": "",
                "width": 300
            },
            "introduction": "Chief Executive Officer",
            "sns": [
              {
                "type": "twitter",
                "value": "FlutterKaigi"
              },
              {
                "type": "github",
                "value": "FlutterKaigi"
              },
              {
                "type": "zenn",
                "value": "zenn"
              },
              {
                "type": "url",
                "value": "https://flutterkaigi.jp"
              }
            ]
        },
        {
            "_id": "646e1a03713a3e21a252c79b",
            "_sys": {
                "raw": {
                    "createdAt": "2023-05-24T14:06:59.211Z",
                    "updatedAt": "2023-05-25T10:30:44.635Z",
                    "firstPublishedAt": "2023-05-24T14:06:59.211Z",
                    "publishedAt": "2023-05-25T10:30:44.635Z"
                },
                "customOrder": 2,
                "createdAt": "2023-05-24T14:06:59.211Z",
                "updatedAt": "2023-05-25T10:30:44.635Z"
            },
            "displayName": "Ccccc Ddddd",
            "image": {
                "_id": "646e0985beb9b686e8806757",
                "altText": "",
                "description": "",
                "fileName": "FlutterKaigi.png",
                "fileSize": 8181,
                "fileType": "image/jpeg",
                "height": 300,
                "metadata": {},
                "src": "https://placehold.jp/300x300.png",
                "title": "",
                "width": 300
            },
            "introduction": "Chief Technology Officer",
            "sns": [
              {
                "type": "twitter",
                "value": "FlutterKaigi"
              },
              {
                "type": "github",
                "value": "FlutterKaigi"
              }
            ]
        },
         {
            "_id": "646e1a03713a3e21a252c79b",
            "_sys": {
                "raw": {
                    "createdAt": "2023-05-24T14:06:59.211Z",
                    "updatedAt": "2023-05-25T10:30:44.635Z",
                    "firstPublishedAt": "2023-05-24T14:06:59.211Z",
                    "publishedAt": "2023-05-25T10:30:44.635Z"
                },
                "customOrder": 2,
                "createdAt": "2023-05-24T14:06:59.211Z",
                "updatedAt": "2023-05-25T10:30:44.635Z"
            },
            "displayName": "Xxxxx Yyyyy",
            "image": {
                "_id": "646e0985beb9b686e8806757",
                "altText": "",
                "description": "",
                "fileName": "FlutterKaigi.png",
                "fileSize": 8181,
                "fileType": "image/jpeg",
                "height": 300,
                "metadata": {},
                "src": "https://placehold.jp/100x100.png",
                "title": "",
                "width": 300
            },
            "introduction": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            "sns": [
              {
                "type": "twitter",
                "value": "FlutterKaigi"
              },
              {
                "type": "github",
                "value": "FlutterKaigi"
              }
            ]
        }
    ]
}
''';
