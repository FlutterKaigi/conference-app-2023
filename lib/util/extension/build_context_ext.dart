import 'package:conference_2023/util/extension/size_ext.dart';
import 'package:conference_2023/util/screen_size.dart';
import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  ScreenSize get screenSize => MediaQuery.sizeOf(this).screenSize;

  double get spacing => MediaQuery.sizeOf(this).spacing;
}
