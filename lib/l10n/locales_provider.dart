import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'locales_provider.g.dart';

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
