import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'locale_provider.g.dart';

@riverpod
Stream<Locale> locale(LocaleRef ref) {
  final controller = StreamController<Locale>();

  /// set initial locale
  controller.sink.add(PlatformDispatcher.instance.locale);
  PlatformDispatcher.instance.onLocaleChanged = () {
    controller.sink.add(PlatformDispatcher.instance.locale);
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
