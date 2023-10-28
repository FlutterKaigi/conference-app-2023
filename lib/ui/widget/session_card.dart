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
    final isFavorite = ref.watch(
      favoriteSessionIdsNotifierProvider.select(
        (value) => value.contains(session.id),
      ),
    );

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

    final trailingFavorite = switch (session) {
      SessionSponsor() || SessionTalk() => showFavoriteIcon
          ? Icon(isFavorite ? Icons.favorite : Icons.favorite_border)
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
      child: ListTile(
        title: Text(session.title.get(locale)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        subtitle: speakerName,
        leading: leadingImage,
        trailing: trailingFavorite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
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
