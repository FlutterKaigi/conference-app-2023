import 'dart:io';

import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/model/app_locale.dart';
import 'package:conference_2023/model/favorites/favorite_session_ids.dart';
import 'package:conference_2023/model/sessions/session.dart';
import 'package:conference_2023/model/sessions/session_provider.dart';
import 'package:conference_2023/ui/widget/sliver_padding_box_to_adapter.dart';
import 'package:conference_2023/util/extension/build_context_ext.dart';
import 'package:conference_2023/util/launch_in_external_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class SessionDetailPage extends ConsumerWidget {
  const SessionDetailPage({
    super.key,
    required this.sessionId,
  });

  final String sessionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);

    final session = ref.watch(sessionProvider(sessionId));
    final locale = ref.watch(appLocaleProvider);
    final room = ref.watch(sessionRoomProvider(sessionId));
    final speaker = switch (session) {
      SessionSponsor(speaker: final s) || SessionTalk(speaker: final s) => s,
      _ => null,
    };
    final description = switch (session) {
      SessionSponsor(description: final d) ||
      SessionTalk(description: final d) =>
        d,
      _ => null,
    };
    final isFavorite = ref.watch(
      favoriteSessionIdsNotifierProvider.select(
        (favoriteSessionIds) => favoriteSessionIds.contains(sessionId),
      ),
    );
    final speakerAndDescription =
        '${speaker?.name ?? ''}\n\n${description?.get(locale) ?? ''}';
    Event createIosEvent() {
      return Event(
        title: session.title.get(locale),
        description: speakerAndDescription,
        location: room.alias,
        startDate: session.start,
        endDate: session.end,
        iosParams: const IOSParams(
          reminder: Duration(minutes: 10),
        ),
      );
    }

    Uri createGoogleCalendarUrl() {
      final dateFormatter = DateFormat("yyyyMMdd'T'HHmmss'Z'");
      return Uri.https(
        'www.google.com',
        'calendar/render',
        {
          'action': 'TEMPLATE',
          'text': session.title.get(locale),
          'details': speakerAndDescription,
          'location': room.alias,
          'dates':
              '${dateFormatter.format(session.start.toUtc())}/${dateFormatter.format(session.end.toUtc())}',
        },
      );
    }

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          primary: true,
          slivers: [
            SliverAppBar.large(
              title: AutoSizeText(
                session.title.get(locale),
                maxLines: 2,
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  tooltip: isFavorite
                      ? localization.favoritesRemoveTooltip
                      : localization.favoritesAddTooltip,
                  onPressed: () async {
                    isFavorite
                        ? await ref
                            .read(favoriteSessionIdsNotifierProvider.notifier)
                            .remove(sessionId)
                        : await ref
                            .read(favoriteSessionIdsNotifierProvider.notifier)
                            .add(sessionId);
                  },
                ),
                PopupMenuButton(
                  onSelected: (menu) async {
                    switch (menu) {
                      case PopupMenu.shareX:
                        final uri = Uri.https(
                          'twitter.com',
                          'intent/tweet',
                          {
                            'url':
                                'https://flutterkaigi.jp/2023/sessions/$sessionId',
                            'hashtags': 'flutterkaigi',
                            'via': 'FlutterKaigi',
                          },
                        );
                        await launchInExternalApp(uri);
                      case PopupMenu.speakerX:
                        final uri = Uri.https(
                          'twitter.com',
                          speaker?.twitter ?? '',
                        );
                        await launchInExternalApp(uri);
                      case PopupMenu.addCalendar:
                        if (!kIsWeb && Platform.isIOS) {
                          await Add2Calendar.addEvent2Cal(createIosEvent());
                        } else {
                          await launchInExternalApp(createGoogleCalendarUrl());
                        }
                    }
                  },
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: PopupMenu.shareX,
                      child: Text(localization.shareX),
                    ),
                    if ((speaker?.twitter ?? '').isNotEmpty)
                      PopupMenuItem(
                        value: PopupMenu.speakerX,
                        child: Text(localization.speakerX),
                      ),
                    PopupMenuItem(
                      value: PopupMenu.addCalendar,
                      child: Text(localization.shareCalendar),
                    ),
                  ],
                  icon: const Icon(Icons.share),
                ),
              ],
            ),
            const SliverGap(16),
            SliverPaddingBoxToAdapter(
              padding: EdgeInsets.symmetric(
                horizontal: context.spacing,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 8,
                    ),
                    child: Text(
                      room.alias,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            const SliverGap(16),
            if (speaker != null) ...[
              SliverPaddingBoxToAdapter(
                padding: EdgeInsets.symmetric(
                  horizontal: context.spacing,
                ),
                child: Wrap(
                  spacing: 16,
                  runSpacing: 8,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(speaker.avatarUrl),
                    ),
                    Text(
                      speaker.name,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
              const SliverGap(24),
            ],
            if (description != null)
              SliverPaddingBoxToAdapter(
                padding: EdgeInsets.symmetric(
                  horizontal: context.spacing,
                ),
                child: MarkdownBody(
                  shrinkWrap: true,
                  selectable: true,
                  data: description.get(locale),
                ),
              ),
            const SliverGap(16),
            SliverGap(MediaQuery.paddingOf(context).bottom),
          ],
        ),
      ),
    );
  }
}

enum PopupMenu {
  shareX,
  speakerX,
  addCalendar,
}
