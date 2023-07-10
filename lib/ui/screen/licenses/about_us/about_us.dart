import 'package:conference_2023/l10n/localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AboutUsPage extends ConsumerWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(localization.licensesAboutUs),
      ),
      body: const Placeholder(),
    );
  }
}
