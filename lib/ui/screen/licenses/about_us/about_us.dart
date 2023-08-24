import 'package:conference_2023/gen/assets.gen.dart';
import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/util/extension/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class AboutUsPage extends ConsumerWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localization.licensesAboutUs),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.spacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(24),
            Center(
              child: Assets.svg.flutterkaigiLogo.svg(
                width: 160,
                height: 160,
                colorFilter: const ColorFilter.mode(
                  Colors.transparent,
                  BlendMode.dst,
                ),
              ),
            ),
            const Gap(24),
            Text(
              localization.licensesAboutUsContents,
              style: theme.textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
