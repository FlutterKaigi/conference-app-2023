import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/util/extension/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FloorMapPage extends ConsumerWidget {
  const FloorMapPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: context.spacing,
        ),
        child: SizedBox.square(
          dimension: 600,
          child: InteractiveViewer(
            minScale: 1.0,
            maxScale: 3.0,
            child: Image.network(
              'https://flutterkaigi.jp/conference-app-2023/venue/floor_map.png',
              semanticLabel: localization.venueFloorMap,
            ),
          ),
        ),
      ),
    );
  }
}
