import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

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

class VisibleDetectScrollControllerNotifier extends StatelessWidget {
  const VisibleDetectScrollControllerNotifier({
    super.key,
    required this.visibleDetectorKey,
    required this.child,
  });

  final Key visibleDetectorKey;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: visibleDetectorKey,
      onVisibilityChanged: (info) {
        if (info.visibleFraction == 1) {
          ScrollControllerNotification(
            controller: PrimaryScrollController.of(context),
          ).dispatch(context);
        }
      },
      child: child,
    );
  }
}
