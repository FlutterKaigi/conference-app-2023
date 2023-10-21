import 'package:conference_2023/gen/assets.gen.dart';
import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/util/extension/build_context_ext.dart';
import 'package:conference_2023/util/launch_in_external_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: context.spacing,
      ),
      child: Column(
        children: [
          const Gap(32),
          Assets.svg.flutterkaigiLogo.svg(
            width: 128,
            height: 128,
            colorFilter: const ColorFilter.mode(
              Colors.transparent,
              BlendMode.dst,
            ),
            semanticsLabel: localization.flutterKaigiLogoSemanticsLabel,
          ),
          const Gap(8),
          Text(
            localization.flutterKaigiTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const Gap(48),
          Text(
            localization.event,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Gap(16),
          Table(
            columnWidths: const {
              0: FixedColumnWidth(56),
              1: FixedColumnWidth(200),
            },
            children: [
              TableRow(
                children: [
                  TableCell(
                    child: Text(
                      localization.eventDate,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  TableCell(
                    child: Text(
                      localization.dateFormatter.yMMEd
                          .format(DateTime(2023, 11, 10)),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Text(
                      localization.eventPlace,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  TableCell(
                    child: Text(
                      localization.eventPlaceDetail,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Gap(32),
          Text(
            localization.link,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Gap(16),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            alignment: WrapAlignment.center,
            children: [
              Tooltip(
                message: localization.twitterTooltip,
                child: OutlinedButton(
                  onPressed: () async {
                    final uri = Uri.parse('https://twitter.com/flutterkaigi');
                    await launchInExternalApp(uri);
                  },
                  child: Text(localization.twitter),
                ),
              ),
              Tooltip(
                message: localization.mediumTooltip,
                child: OutlinedButton(
                  onPressed: () async {
                    final uri = Uri.parse('https://medium.com/flutterkaigi');
                    await launchInExternalApp(uri);
                  },
                  child: Text(localization.medium),
                ),
              ),
              Tooltip(
                message: localization.githubTooltip,
                child: OutlinedButton(
                  onPressed: () async {
                    final uri = Uri.parse('https://github.com/FlutterKaigi');
                    await launchInExternalApp(uri);
                  },
                  child: Text(localization.github),
                ),
              ),
              Tooltip(
                message: localization.discordTooltip,
                child: OutlinedButton(
                  onPressed: () async {
                    final uri =
                        Uri.parse('https://discord.com/invite/Nr7H8JTJSF');
                    await launchInExternalApp(uri);
                  },
                  child: Text(localization.discord),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
