import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/model/sessions/session.dart';
import 'package:conference_2023/model/sessions/session_provider.dart';
import 'package:conference_2023/ui/router/router_app.dart';
import 'package:conference_2023/ui/widget/scroll_controller_notification.dart';
import 'package:conference_2023/ui/widget/session_card.dart';
import 'package:conference_2023/util/extension/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:visibility_detector/visibility_detector.dart';

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

    return VisibilityDetector(
      key: const Key('SessionsPage'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction == 1) {
          ScrollControllerNotification(
            controller: PrimaryScrollController.of(context),
          ).dispatch(context);
        }
      },
      child: ListView(
        primary: true,
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
              SessionCard(
                session: session,
                showFavoriteIcon: true,
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
