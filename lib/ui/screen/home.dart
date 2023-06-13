import 'package:conference_2023/gen/assets.gen.dart';
import 'package:conference_2023/util/extension/media_query_data_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final margin = MediaQuery.of(context).spacing;
    final locale = Localizations.localeOf(context);
    final eventFormatter = DateFormat.yMMMd(locale.languageCode);
    final eventDate = eventFormatter.format(DateTime(2023, 11, 10));

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
            AppLocalizations.of(context).flutterKaigiTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const Gap(56),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              AppLocalizations.of(context).event,
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
                      AppLocalizations.of(context).eventDate,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  TableCell(
                    child: Text(
                      eventDate,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    child: Text(
                      AppLocalizations.of(context).eventPlace,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  TableCell(
                    child: Text(
                      AppLocalizations.of(context).eventPlaceDetail,
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
              AppLocalizations.of(context).event,
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
                  child: Text(AppLocalizations.of(context).twitter),
                ),
                OutlinedButton(
                  onPressed: () {
                    launchUrlString('https://github.com/FlutterKaigi');
                  },
                  child: Text(AppLocalizations.of(context).github),
                ),
                OutlinedButton(
                  onPressed: () {
                    launchUrlString('https://medium.com/flutterkaigi');
                  },
                  child: Text(AppLocalizations.of(context).medium),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
