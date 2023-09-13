import 'package:flutter/material.dart';

class SelectionAreaScaffold extends StatelessWidget {
  const SelectionAreaScaffold({
    super.key,
    this.appBar,
    this.drawer,
    this.body,
    this.bottomNavigationBar,
  });

  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget? body;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        appBar: appBar,
        drawer: drawer,
        body: body,
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}
