import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/model/favorites/favorite_session_provider.dart';
import 'package:conference_2023/ui/widget/session_card.dart';
import 'package:conference_2023/util/extension/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
      itemBuilder: (context, index) => SessionCard(
        session: favoriteSessions[index],
        showFavoriteIcon: false,
      ),
    );
  }
}
