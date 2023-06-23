import 'package:conference_2023/gen/assets.gen.dart';
import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/util/extension/media_query_data_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final margin = MediaQuery.of(context).spacing;
    final localization = ref.watch(localizationProvider);

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: margin,
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
          ),
          const Gap(8),
          Text(
            localization.flutterKaigiTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const Gap(56),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              localization.event,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const Gap(8),
          Table(
            columnWidths: const {
              0: FixedColumnWidth(64),
              1: FlexColumnWidth(),
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
          const Gap(16),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              localization.event,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const Gap(8),
          SizedBox(
            width: double.infinity,
            child: Wrap(
              spacing: 16,
              children: [
                OutlinedButton(
                  onPressed: () {
                    launchUrlString('https://twitter.com/flutterkaigi');
                  },
                  child: Text(localization.twitter),
                ),
                OutlinedButton(
                  onPressed: () {
                    launchUrlString('https://github.com/FlutterKaigi');
                  },
                  child: Text(localization.github),
                ),
                OutlinedButton(
                  onPressed: () {
                    launchUrlString('https://medium.com/flutterkaigi');
                  },
                  child: Text(localization.medium),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
