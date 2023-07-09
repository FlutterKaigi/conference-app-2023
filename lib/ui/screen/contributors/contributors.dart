import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/util/extension/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContributorsPage extends ConsumerWidget {
  const ContributorsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);
    return ListView(
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: context.spacing,
          ),
          title: Text(localization.pageTitleContributors),
        )
      ],
    );
  }
}
