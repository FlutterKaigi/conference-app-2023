import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/ui/router/router_app.dart';
import 'package:conference_2023/ui/screen/contributors/developers.dart';
import 'package:conference_2023/ui/screen/contributors/staffs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

enum ContributorsTab {
  developer,
  staff,
}

class ContributorsPage extends ConsumerWidget {
  const ContributorsPage({
    super.key,
    required this.tab,
  });

  final ContributorsTab tab;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = ref.watch(localizationProvider);

    return Column(
      children: [
        const Gap(16),
        SegmentedButton<ContributorsTab>(
          showSelectedIcon: false,
          segments: [
            ButtonSegment(
              label: Text(localizations.contributorsDeveloper),
              value: ContributorsTab.developer,
            ),
            ButtonSegment(
              label: Text(localizations.contributorsStaff),
              value: ContributorsTab.staff,
            ),
          ],
          selected: {
            tab,
          },
          onSelectionChanged: (tab) {
            ContributorsRoute(
              tab: tab.first,
            ).go(context);
          },
        ),
        const Gap(16),
        Expanded(
          child: switch (tab) {
            ContributorsTab.developer => const Developers(),
            ContributorsTab.staff => const Staffs(),
          },
        ),
      ],
    );
  }
}
