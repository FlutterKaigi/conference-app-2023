import 'package:conference_2023/model/sessions/session.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'session_room.g.dart';

@riverpod
class SelectedRoom extends _$SelectedRoom {
  @override
  Room build() => Room.room1;

  void update(Room room) => state = room;
}
