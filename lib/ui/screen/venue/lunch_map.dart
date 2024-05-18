import 'package:auto_size_text/auto_size_text.dart';
import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/model/venue/lunch.dart';
import 'package:conference_2023/model/venue/lunch_provider.dart';
import 'package:conference_2023/util/launch_in_external_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:two_dimensional_scrollables/two_dimensional_scrollables.dart';

class LunchMapPage extends ConsumerWidget {
  const LunchMapPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);
    final storeList = ref.watch(sortedStoreListProvider);

    return TableView.builder(
      primary: true,
      pinnedRowCount: 1,
      columnCount: 7,
      rowCount: storeList.items.length,
      columnBuilder: (index) => switch (index) {
        0 => const TableSpan(
            extent: FixedTableSpanExtent(48),
          ),
        1 => const TableSpan(
            extent: FixedTableSpanExtent(140),
          ),
        2 => const TableSpan(
            extent: FixedTableSpanExtent(160),
          ),
        3 => const TableSpan(
            extent: MaxTableSpanExtent(
              FixedTableSpanExtent(140),
              FractionalTableSpanExtent(0.2),
            ),
          ),
        4 => const TableSpan(
            extent: MaxTableSpanExtent(
              FixedTableSpanExtent(140),
              FractionalTableSpanExtent(0.4),
            ),
          ),
        5 => const TableSpan(
            extent: FixedTableSpanExtent(100),
          ),
        6 => const TableSpan(
            extent: RemainingTableSpanExtent(),
          ),
        _ => const TableSpan(
            extent: FixedTableSpanExtent(0),
          ),
      },
      rowBuilder: (index) => switch (index) {
        0 => TableSpan(
            extent: const FixedTableSpanExtent(48),
            backgroundDecoration: TableSpanDecoration(
              border: TableSpanBorder(
                trailing: BorderSide(
                  color: Theme.of(context).colorScheme.onSurface,
                  width: 1,
                ),
              ),
            ),
          ),
        _ => TableSpan(
            extent: const MaxTableSpanExtent(
              FixedTableSpanExtent(100),
              FractionalTableSpanExtent(0.2),
            ),
            backgroundDecoration: TableSpanDecoration(
              border: TableSpanBorder(
                trailing: BorderSide(
                  color:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
                  width: 0.5,
                ),
              ),
            ),
          ),
      },
      cellBuilder: (context, vicinity) {
        final store = storeList.items[vicinity.row];
        if (vicinity.row == 0) {
          return TableViewCell(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: switch (vicinity.column) {
                  0 => const Text('id'),
                  1 => Text(store.name),
                  2 => Row(
                      children: [
                        Text(store.routeTime),
                        Flexible(
                          child: PopupMenuButton(
                            child: const Icon(Icons.arrow_drop_down_outlined),
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                child: Text(localization.lunchMapSortReset),
                                onTap: () => ref
                                    .read(
                                      storeSortOptionNotifierProvider.notifier,
                                    )
                                    .update(StoreSortOption.byId),
                              ),
                              PopupMenuItem(
                                child: Text(localization.lunchMapSortAsc),
                                onTap: () => ref
                                    .read(
                                      storeSortOptionNotifierProvider.notifier,
                                    )
                                    .update(StoreSortOption.asc),
                              ),
                              PopupMenuItem(
                                child: Text(localization.lunchMapSortDesc),
                                onTap: () => ref
                                    .read(
                                      storeSortOptionNotifierProvider.notifier,
                                    )
                                    .update(StoreSortOption.desc),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  3 => Text(store.recommendedMenu),
                  4 => Text(store.comment),
                  5 => Text(localization.venueMenuOption),
                  _ => const Text(''),
                },
              ),
            ),
          );
        }

        return TableViewCell(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: switch (vicinity.column) {
                0 => Text(store.id),
                1 => AutoSizeText(
                    store.name,
                    maxLines: 2,
                    softWrap: true,
                  ),
                2 => Text(localization.venueRouteTime(store.routeTime)),
                3 => AutoSizeText(
                    store.recommendedMenu,
                    maxLines: 5,
                    softWrap: true,
                  ),
                4 => AutoSizeText(
                    store.comment,
                    maxLines: 5,
                    softWrap: true,
                  ),
                5 => PopupMenuButton(
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text(localization.venueMenuLink),
                        onTap: () async {
                          final uri = Uri.parse(store.externalLink);
                          await launchInExternalApp(uri);
                        },
                      ),
                      PopupMenuItem(
                        child: Text(localization.venueMenuNavitimeMap),
                        onTap: () async {
                          final uri = Uri.parse(store.navitimeMapLink);
                          await launchInExternalApp(uri);
                        },
                      ),
                      PopupMenuItem(
                        child: Text(localization.venueMenuGoogleMap),
                        onTap: () async {
                          final uri = Uri.parse(store.googleMapLink);
                          await launchInExternalApp(uri);
                        },
                      ),
                    ],
                  ),
                _ => const SizedBox.shrink(),
              },
            ),
          ),
        );
      },
    );
  }
}
