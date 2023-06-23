import 'package:conference_2023/util/screen_size.dart';
import 'package:flutter/material.dart';

/// ref [https://m3.material.io/foundations/layout/applying-layout/window-size-classes]
extension SizeExt on Size {
  ScreenSize get screenSize => switch (width) {
        < 600 => ScreenSize.compact,
        < 840 => ScreenSize.medium,
        _ => ScreenSize.expanded,
      };

  double get spacing => switch (width) {
        < 600 => 16,
        < 840 => 24,
        _ => 24,
      };
}
