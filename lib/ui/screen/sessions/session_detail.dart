import 'package:conference_2023/gen/assets.gen.dart';
import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/model/app_locale.dart';
import 'package:conference_2023/model/favorites/favorite_session_ids.dart';
import 'package:conference_2023/model/sessions/session.dart';
import 'package:conference_2023/model/sessions/session_provider.dart';
import 'package:conference_2023/util/extension/build_context_ext.dart';
import 'package:conference_2023/util/launch_in_external_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

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

    return Scaffold(
      appBar: AppBar(
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
          PopupMenuButton<String>(
            onSelected: (String value) async {
              switch (value) {
                case 'share_x':
                  final uri = Uri.parse(
                    'https://twitter.com/share?url=https://flutterkaigi.jp/2023/sessions/$sessionId&hashtags=flutterkaigi&via=FlutterKaigi',
                  );
                  await launchInExternalApp(uri);
                  break;
                case 'add_calendar':
                  break;
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'share_x',
                child: Text('Xで共有'),
              ),
              const PopupMenuItem<String>(
                value: 'add_calendar',
                child: Text('カレンダー登録'),
              ),
            ],
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: context.spacing,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              session.title.get(locale),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Gap(8),
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
            const Gap(16),
            if (speaker != null) ...[
              Wrap(
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
              if (speaker.twitter.isNotEmpty) ...[
                const Gap(8),
                Tooltip(
                  message: localization.twitterTooltip,
                  child: OutlinedButton.icon(
                    icon: Assets.svg.xLogo.svg(
                      width: 18,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.onSurface,
                        BlendMode.srcIn,
                      ),
                    ),
                    label: Text('@${speaker.twitter}'),
                    onPressed: () async {
                      final uri = Uri.parse(
                        'https://x.com/${speaker.twitter}',
                      );
                      await launchInExternalApp(uri);
                    },
                  ),
                ),
              ],
              const Gap(24),
            ],
            if (description != null)
              MarkdownBody(
                shrinkWrap: true,
                selectable: true,
                data: description.get(locale),
              ),
          ],
        ),
      ),
    );
  }
}
