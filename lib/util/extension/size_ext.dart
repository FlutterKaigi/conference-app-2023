import 'package:flutter/material.dart';

/// ref [https://m3.material.io/foundations/layout/applying-layout/window-size-classes]
extension SizeExt on Size {
  double get spacing => switch (width) {
        < 600 => 16,
        < 840 => 24,
        _ => 24,
      };
}
