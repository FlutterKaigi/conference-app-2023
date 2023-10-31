import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/model/app_locale.dart';
import 'package:conference_2023/model/favorites/favorite_session_ids.dart';
import 'package:conference_2023/model/sessions/session.dart';
import 'package:conference_2023/ui/router/router_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SessionCard extends ConsumerWidget {
  const SessionCard({
    super.key,
    required this.session,
    required this.showFavoriteIcon,
  });

  final Session session;
  final bool showFavoriteIcon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(appLocaleProvider);
    final localization = ref.watch(localizationProvider);
    final isFavorite = ref.watch(
      favoriteSessionIdsNotifierProvider.select(
        (value) => value.contains(session.id),
      ),
    );

    final speakerName = switch (session) {
      SessionSponsor(speaker: final s) => Text.rich(
          TextSpan(
            children: [
              const WidgetSpan(
                child: Icon(
                  Icons.handshake_outlined,
                  size: 16,
                ),
              ),
              const WidgetSpan(
                child: SizedBox(
                  width: 4,
                ),
              ),
              TextSpan(
                text: s.name,
              ),
            ],
          ),
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

    final trailingFavorite = switch (session) {
      SessionSponsor() || SessionTalk() => showFavoriteIcon
          ? IconButton(
              tooltip: isFavorite
                  ? localization.favoritesRemoveTooltip
                  : localization.favoritesAddTooltip,
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: Theme.of(context).colorScheme.primary,
              ),
              onPressed: () async {
                isFavorite
                    ? await ref
                        .read(favoriteSessionIdsNotifierProvider.notifier)
                        .remove(session.id)
                    : await ref
                        .read(favoriteSessionIdsNotifierProvider.notifier)
                        .add(session.id);
              },
            )
          : null,
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
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        title: Text(session.title.get(locale)),
        subtitle: speakerName,
        leading: leadingImage,
        trailing: trailingFavorite,
        onTap: switch (session) {
          SessionTalk() || SessionSponsor() => () {
              SessionDetailRoute(
                sessionId: session.id,
              ).push(context);
            },
          _ => null,
        },
      ),
    );
  }
}
