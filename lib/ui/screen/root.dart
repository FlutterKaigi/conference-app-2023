import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/ui/router/branch_container.dart';
import 'package:conference_2023/ui/screen/root_drawer.dart';
import 'package:conference_2023/ui/screen/root_navigation_bar.dart';
import 'package:conference_2023/ui/screen/root_navigation_rail.dart';
import 'package:conference_2023/ui/screen/root_tab.dart';
import 'package:conference_2023/ui/widget/session_questionnaire_fab.dart';
import 'package:conference_2023/ui/widget/visible_detect_scroll_controller_notifier.dart';
import 'package:conference_2023/util/extension/build_context_ext.dart';
import 'package:conference_2023/util/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class RootScreen extends ConsumerStatefulWidget {
  const RootScreen({
    super.key,
    required this.navigationShell,
    required this.children,
  });

  final StatefulNavigationShell navigationShell;
  final List<Widget> children;

  @override
  ConsumerState<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends ConsumerState<RootScreen> {
  ScrollController? _primaryScrollController;

  bool _isTopPosition = true;

  @override
  Widget build(BuildContext context) {
    final localization = ref.watch(localizationProvider);

    final screenSize = context.screenSize;
    final currentTab = RootTab.current(context);

    void scrollOffsetListener() {
      if (_primaryScrollController == null ||
          !_primaryScrollController!.hasClients) {
        setState(() {
          _isTopPosition = true;
        });
        return;
      }

      final offset = _primaryScrollController?.offset ?? 0;
      final isTopPosition = offset < 50.0;
      if (_isTopPosition != isTopPosition) {
        setState(() {
          _isTopPosition = isTopPosition;
        });
      }
    }

    // Update the primary scroll controller when the current tab changes.
    return NotificationListener<ScrollControllerNotification>(
      onNotification: (notification) {
        if (_primaryScrollController != notification.controller) {
          _primaryScrollController?.removeListener(scrollOffsetListener);
          setState(() {
            // Update the primary scroll controller.
            // The given controller is disposed according to the widget on the dispatching side,
            // so it is not disposed here.
            _primaryScrollController = notification.controller;
          });
          _primaryScrollController?.addListener(scrollOffsetListener);
          scrollOffsetListener();
        }

        return true;
      },
      child: PrimaryScrollController(
        controller:
            _primaryScrollController ?? PrimaryScrollController.of(context),
        child: Scaffold(
          appBar: AppBar(
            title: Text(currentTab.title(localization)),
            centerTitle: true,
          ),
          drawer: switch (screenSize) {
            ScreenSize.compact => RootDrawer(
                navigationShell: widget.navigationShell,
                currentTab: currentTab,
              ),
            _ => null,
          },
          body: switch (screenSize) {
            ScreenSize.compact => BranchContainer(
                currentIndex: widget.navigationShell.currentIndex,
                children: widget.children,
              ),
            ScreenSize.medium => Row(
                children: [
                  LayoutBuilder(
                    builder: (context, constraints) => SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: constraints.maxHeight,
                        ),
                        child: IntrinsicHeight(
                          child: RootNavigationRail(
                            navigationShell: widget.navigationShell,
                            currentTab: currentTab,
                            extended: false,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: BranchContainer(
                      currentIndex: widget.navigationShell.currentIndex,
                      children: widget.children,
                    ),
                  ),
                ],
              ),

            /// TODO: wait for [https://github.com/flutter/flutter/issues/123113]
            ScreenSize.expanded => Row(
                children: [
                  LayoutBuilder(
                    builder: (context, constraints) => SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: constraints.maxHeight,
                        ),
                        child: IntrinsicHeight(
                          child: RootNavigationRail(
                            navigationShell: widget.navigationShell,
                            currentTab: currentTab,
                            extended: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: BranchContainer(
                      currentIndex: widget.navigationShell.currentIndex,
                      children: widget.children,
                    ),
                  ),
                ],
              ),
          },
          bottomNavigationBar: switch (screenSize) {
            ScreenSize.compact => RootNavigationBar(
                navigationShell: widget.navigationShell,
              ),
            _ => null,
          },
          floatingActionButton: _isTopPosition
              ? switch (currentTab) {
                  RootTab.home ||
                  RootTab.sessions =>
                    const SessionQuestionnaireFab(),
                  _ => const SizedBox.shrink(),
                }
              : null,
        ),
      ),
    );
  }
}
