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
      children: children.mapIndexed(
        (
          int index,
          Widget navigator,
        ) {
          return Opacity(
            opacity: index == currentIndex ? 1 : 0,
            child: _branchNavigatorWrapper(index, navigator),
          );
        },
      ).toList(),
    );
  }

  Widget _branchNavigatorWrapper(
    int index,
    Widget navigator,
  ) =>
      IgnorePointer(
        ignoring: index != currentIndex,
        child: TickerMode(
          enabled: index == currentIndex,
          child: navigator,
        ),
      );
}
