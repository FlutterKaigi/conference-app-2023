import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class BranchContainer extends StatelessWidget {
  const BranchContainer({
    super.key,
    required this.currentIndex,
    required this.children,
  });

  final int currentIndex;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ...children.mapIndexed(
          (index, navigator) => AnimatedOpacity(
            duration: const Duration(milliseconds: 400),
            opacity: index == currentIndex ? 1 : 0,

            // Avoid detecting tap event in non selected screen
            child: IgnorePointer(
              ignoring: index != currentIndex,

              // Avoid detecting scroll event in non selected screen
              child: TickerMode(
                enabled: index == currentIndex,
                child: navigator,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
