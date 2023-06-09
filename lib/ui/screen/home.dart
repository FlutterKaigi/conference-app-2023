import 'package:conference_2023/gen/assets.gen.dart';
import 'package:conference_2023/util/extension/media_query_data_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

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
            AppLocalizations.of(context).flutter_kaigi_title,
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
                      AppLocalizations.of(context).event_date,
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
                      AppLocalizations.of(context).event_place,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  TableCell(
                    child: Text(
                      AppLocalizations.of(context).event_place_detail,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
