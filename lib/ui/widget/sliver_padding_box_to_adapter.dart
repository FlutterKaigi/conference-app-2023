import 'package:flutter/material.dart';

class SliverPaddingBoxToAdapter extends StatelessWidget {
  const SliverPaddingBoxToAdapter({
    super.key,
    required this.padding,
    required this.child,
  });

  final EdgeInsets padding;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: padding,
      sliver: SliverToBoxAdapter(
        child: child,
      ),
    );
  }
}