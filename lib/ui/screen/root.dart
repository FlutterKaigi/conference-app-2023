import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/ui/router/branch_container.dart';
import 'package:conference_2023/ui/router/router_provider.dart';
import 'package:conference_2023/ui/screen/root_drawer.dart';
import 'package:conference_2023/ui/screen/root_navigation_bar.dart';
import 'package:conference_2023/ui/screen/root_navigation_rail.dart';
import 'package:conference_2023/ui/screen/root_tab.dart';
import 'package:conference_2023/ui/widget/selection_area_scaffold.dart';
import 'package:conference_2023/util/extension/build_context_ext.dart';
import 'package:conference_2023/util/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class RootScreen extends ConsumerWidget {
  const RootScreen({
    super.key,
    required this.navigationShell,
    required this.children,
  });

  final StatefulNavigationShell navigationShell;
  final List<Widget> children;

  RootTab _getCurrentTab(BuildContext context) {
    final location = GoRouterState.of(context).uri;
    return RootTab.values.firstWhere(
      (element) => location.pathSegments.firstOrNull == element.path,
      orElse: () => RootTab.home,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);
    final router = ref.watch(routerProvider);

    final screenSize = context.screenSize;
    final currentTab = _getCurrentTab(context);

    return SelectionAreaScaffold(
      appBar: AppBar(
        title: Text(currentTab.title(localization)),
        centerTitle: true,
        leading: router.isSubRouteFromSession
            ? IconButton(
                onPressed: () => router.pop(),
                icon: const Icon(Icons.arrow_back),
              )
            : null,
      ),
      drawer: switch (screenSize) {
        ScreenSize.compact => RootDrawer(
            navigationShell: navigationShell,
            currentTab: currentTab,
          ),
        _ => null,
      },
      body: switch (screenSize) {
        ScreenSize.compact => BranchContainer(
            currentIndex: navigationShell.currentIndex,
            children: children,
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
                        navigationShell: navigationShell,
                        currentTab: currentTab,
                        extended: false,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: BranchContainer(
                  currentIndex: navigationShell.currentIndex,
                  children: children,
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
                        navigationShell: navigationShell,
                        currentTab: currentTab,
                        extended: true,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: BranchContainer(
                  currentIndex: navigationShell.currentIndex,
                  children: children,
                ),
              ),
            ],
          ),
      },
      bottomNavigationBar: switch (screenSize) {
        ScreenSize.compact => RootNavigationBar(
            navigationShell: navigationShell,
          ),
        _ => null,
      },
    );
  }
}
