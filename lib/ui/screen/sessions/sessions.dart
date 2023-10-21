import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/model/app_locale.dart';
import 'package:conference_2023/model/sessions/session.dart';
import 'package:conference_2023/model/sessions/session_provider.dart';
import 'package:conference_2023/ui/router/router_app.dart';
import 'package:conference_2023/util/extension/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class SessionsPage extends ConsumerWidget {
  const SessionsPage({
    super.key,
    this.room = Room.room1,
  });

  final Room room;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);
    final sessions = ref.watch(sessionsProvider(room));

    return SelectionContainer.disabled(
      child: ListView(
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: context.spacing,
        ),
        children: [
          Container(
            alignment: Alignment.center,
            child: SegmentedButton<Room>(
              showSelectedIcon: false,
              segments: [
                ButtonSegment(
                  value: Room.room1,
                  label: Text(Room.room1.alias),
                  tooltip: localization.roomOne,
                ),
                ButtonSegment(
                  value: Room.room2,
                  label: Text(Room.room2.alias),
                  tooltip: localization.roomTwo,
                ),
              ],
              onSelectionChanged: (rooms) {
                if (rooms.isEmpty) return;
                SessionsRoute(
                  room: rooms.first,
                ).go(context);
              },
              selected: {room},
            ),
          ),
          const Gap(16),
          for (final session in sessions)
            _SessionSection(
              session: session,
            ),
        ],
      ),
    );
  }
}

class _SessionSection extends ConsumerWidget {
  const _SessionSection({
    required this.session,
  });

  final Session session;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);
    final sessionDuration = session.end.difference(session.start);
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
        const Gap(8),
        Container(
          margin: const EdgeInsets.only(
            left: 16,
          ),
          padding: const EdgeInsets.only(
            left: 16,
            right: 0,
            top: 0,
            bottom: 4,
          ),
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                width: 2,
                color: Theme.of(context).colorScheme.outlineVariant,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _SessionCard(
                session: session,
              ),
              const Gap(4),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                ),
                child: Text(
                  localization.durationMinutes(sessionDuration),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ),
        const Gap(8),
      ],
    );
  }
}

class _SessionCard extends ConsumerWidget {
  const _SessionCard({
    required this.session,
  });

  final Session session;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(appLocaleProvider);

    final speakerName = switch (session) {
      SessionSponsor(speaker: final s) => Wrap(
          spacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text(s.name),
            const Icon(Icons.handshake_outlined),
          ],
        ),
      SessionTalk(speaker: final s) => Text(s.name),
      _ => null,
    };

    final leadingImage = switch (session) {
      SessionSponsor(speaker: final s) ||
      SessionTalk(speaker: final s) =>
        CircleAvatar(
          backgroundImage: NetworkImage(s.avatarUrl),
        ),
      _ => null,
    };

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
        contentPadding: const EdgeInsets.only(
          left: 16,
        ),
        subtitle: speakerName,
        leading: leadingImage,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        onTap: switch (session) {
          SessionTalk() || SessionSponsor() => () {
              SessionDetailRoute(
                sessionId: session.id,
              ).go(context);
            },
          _ => null,
        },
      ),
    );
  }
}
