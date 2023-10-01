import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/model/app_locale.dart';
import 'package:conference_2023/model/sessions/session.dart';
import 'package:conference_2023/model/sessions/session_provider.dart';
import 'package:conference_2023/model/sessions/session_room.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class SessionsPage extends ConsumerWidget {
  const SessionsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);
    final selectedRoom = ref.watch(selectedRoomProvider);
    final sessions = ref.watch(sessionsProvider(selectedRoom));

    return SelectionContainer.disabled(
      child: ListView(
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
          const Gap(16),
          for (final session in sessions) ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: _SessionSection(session: session),
            ),
            const Gap(16),
          ],
        ],
      ),
    );
  }
}

class _SessionSection extends ConsumerWidget {
  const _SessionSection({super.key, required this.session});

  final Session session;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);
    return Column(
      children: [
        Row(
          children: [
            Text(
              localization.dateFormatter.Hm.format(session.start),
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const Spacer(),
          ],
        ),
        Row(
          children: [
            const Gap(32),
            Expanded(
              child: _SessionCard(session: session),
            ),
          ],
        ),
      ],
    );
  }
}

class _SessionCard extends ConsumerWidget {
  const _SessionCard({super.key, required this.session});

  final Session session;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(appLocaleProvider);

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
      ),
      child: ListTile(
        title: Text(session.title.get(locale)),
        contentPadding: const EdgeInsets.only(left: 16),
        trailing: switch (session) {
          SessionSponsor(speaker: final s) ||
          SessionTalk(speaker: final s) =>
            Padding(
              padding: const EdgeInsets.all(1),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(11),
                  bottomRight: Radius.circular(11),
                ),
                child: Image.network(s.avatarUrl),
              ),
            ),
          _ => null,
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        onTap: () {},
      ),
    );
  }
}
