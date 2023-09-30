import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/model/sessions/session.dart';
import 'package:conference_2023/model/sessions/session_room.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SessionsPage extends ConsumerWidget {
  const SessionsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);
    final selectedRoom = ref.watch(selectedRoomProvider);

    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 16),
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SegmentedButton<Room>(
            segments: [
              ButtonSegment(
                value: Room.room1,
                label: Text(localization.roomOne),
                tooltip: localization.roomOne,
              ),
              ButtonSegment(
                value: Room.room2,
                label: Text(localization.roomTwo),
                tooltip: localization.roomTwo,
              ),
            ],
            onSelectionChanged: (rooms) {
              if (rooms.isEmpty) return;
              ref.read(selectedRoomProvider.notifier).update(rooms.first);
            },
            selected: {selectedRoom},
          ),
        ),
      ],
    );
  }
}
