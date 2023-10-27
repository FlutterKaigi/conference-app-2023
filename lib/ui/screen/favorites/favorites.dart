import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/model/app_locale.dart';
import 'package:conference_2023/model/favorites/favorite_session_provider.dart';
import 'package:conference_2023/model/sessions/session.dart';
import 'package:conference_2023/ui/router/router_app.dart';
import 'package:conference_2023/util/extension/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class FavoritesPage extends ConsumerWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);
    final favoriteSessions = ref.watch(favoriteSessionsProvider);

    if (favoriteSessions.isEmpty) {
      return Center(
        child: Text(localization.favoritesSessionEmptyPrompt),
      );
    }

    return ListView.builder(
      padding: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: context.spacing,
      ),
      itemCount: favoriteSessions.length,
      itemBuilder: (context, index) {
        return _SessionTile(session: favoriteSessions[index]);
      },
    );
  }
}

class _SessionTile extends ConsumerWidget {
  const _SessionTile({
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

    return ListTile(
      title: Text(session.title.get(locale)),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 8,
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
            ).push(context);
          },
        _ => null,
      },
    );
  }
}
