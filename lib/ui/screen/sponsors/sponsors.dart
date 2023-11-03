import 'dart:math';

import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/model/sponsors/sponsor_provider.dart';
import 'package:conference_2023/ui/screen/sponsors/sponsor_item.dart';
import 'package:conference_2023/ui/widget/scroll_controller_notification.dart';
import 'package:conference_2023/ui/widget/sliver_padding_box_to_adapter.dart';
import 'package:conference_2023/util/extension/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:visibility_detector/visibility_detector.dart';

class SponsorsPage extends ConsumerWidget {
  const SponsorsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = ref.watch(localizationProvider);
    final state = ref.watch(sponsorListProvider);

    return VisibilityDetector(
      key: const Key('SponsorsPage'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction == 1) {
          ScrollControllerNotification(
            controller: PrimaryScrollController.of(context),
          ).dispatch(context);
        }
      },
      child: LayoutBuilder(
        builder: (context, constraints) {
          final spacing =
              max(context.spacing, (constraints.maxWidth - 600) / 2);
          final padding = EdgeInsets.symmetric(
            horizontal: spacing,
          );

          return switch (state) {
            AsyncData(value: final sponsor) => CustomScrollView(
                primary: true,
                slivers: [
                  if (sponsor.platinum.isNotEmpty) ...[
                    const SliverGap(16),
                    SliverPaddingBoxToAdapter(
                      padding: padding,
                      child: Center(
                        child: Text(
                          localizations.sponsorPlatinum,
                          semanticsLabel:
                              localizations.sponsorPlatinumSemanticsLabel,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                    ),
                    const SliverGap(16),
                    SliverPadding(
                      padding: padding,
                      sliver: SliverList.separated(
                        itemBuilder: (context, index) => SponsorItem(
                          sponsor: sponsor.platinum[index],
                        ),
                        itemCount: sponsor.platinum.length,
                        separatorBuilder: (context, index) => const Gap(16),
                      ),
                    ),
                  ],
                  if (sponsor.gold.isNotEmpty) ...[
                    const SliverGap(16),
                    SliverPaddingBoxToAdapter(
                      padding: padding,
                      child: Center(
                        child: Text(
                          localizations.sponsorGold,
                          semanticsLabel:
                              localizations.sponsorGoldSemanticsLabel,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                    ),
                    const SliverGap(16),
                    SliverPadding(
                      padding: padding,
                      sliver: SliverGrid.builder(
                        itemBuilder: (context, index) => SponsorItem(
                          sponsor: sponsor.gold[index],
                        ),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          crossAxisCount: 2,
                          childAspectRatio: 1.25,
                        ),
                        itemCount: sponsor.gold.length,
                      ),
                    ),
                  ],
                  if (sponsor.silver.isNotEmpty) ...[
                    const SliverGap(16),
                    SliverPaddingBoxToAdapter(
                      padding: padding,
                      child: Center(
                        child: Text(
                          localizations.sponsorSilver,
                          semanticsLabel:
                              localizations.sponsorSilverSemanticsLabel,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                    ),
                    const SliverGap(16),
                    SliverPadding(
                      padding: padding,
                      sliver: SliverGrid.builder(
                        itemBuilder: (context, index) => SponsorItem(
                          sponsor: sponsor.silver[index],
                        ),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          crossAxisCount: 3,
                          childAspectRatio: 1.25,
                        ),
                        itemCount: sponsor.silver.length,
                      ),
                    ),
                  ],
                  const SliverGap(16),
                ],
              ),
            AsyncError(error: final error) => Center(
                child: Text(error.toString()),
              ),
            _ => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
          };
        },
      ),
    );
  }
}
