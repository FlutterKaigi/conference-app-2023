import 'dart:async';

import 'package:conference_2023/model/provider/localization_mode_notifier.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'locales_provider.g.dart';

/// A provider that returns the current [Locale].
///
/// This provider is updated when the user changes the system locale,
/// or when the user changes the [LocalizationMode] in settings.
@riverpod
Locale appLocale(AppLocaleRef ref) {
  final localizationMode = ref.watch(localizationModeNotifierProvider);
  switch (localizationMode) {
    case LocalizationMode.japanese:
      return const Locale('ja');
    case LocalizationMode.english:
      return const Locale('en');
    case LocalizationMode.system:
      final locales = ref.watch(localesProvider).valueOrNull ?? const [];
      for (final locale in locales) {
        switch (locale.languageCode) {
          case 'en':
            return const Locale('en');
          case 'ja':
            return const Locale('ja');
        }
      }

      return const Locale('ja');
  }
}

/// A provider that returns the [locale] of the system.
@riverpod
Stream<List<Locale>> locales(LocalesRef ref) {
  final controller = StreamController<List<Locale>>();

  /// set initial locale
  controller.sink.add(PlatformDispatcher.instance.locales);
  PlatformDispatcher.instance.onLocaleChanged = () {
    controller.sink.add(PlatformDispatcher.instance.locales);
  };

  ref.onDispose(
    () async {
      PlatformDispatcher.instance.onLocaleChanged = null;
      await controller.close();
    },
  );
  ref.keepAlive();

  return controller.stream;
}
