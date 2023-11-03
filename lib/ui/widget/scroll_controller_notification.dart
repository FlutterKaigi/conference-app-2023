import 'package:flutter/material.dart';

/// Update the [PrimaryScrollController] on the root page to enable `primary: true` for all tabs.
///
/// When using nested [Scaffold] widgets, different [PrimaryScrollController] instances are assigned to the parent and child widgets.
/// In general, this is not an issue. However, when using [StatefulShellRoute], the status bar tap event is not properly handled on iOS.
///
/// To address this, we use a [NotificationListener] to ensure that the root [PrimaryScrollController] is updated to match the one used by each tab.
class ScrollControllerNotification extends Notification {
  const ScrollControllerNotification({
    required this.controller,
  });

  final ScrollController controller;
}
