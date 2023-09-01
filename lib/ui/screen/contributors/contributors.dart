import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/ui/router/router_app.dart';
import 'package:conference_2023/ui/screen/contributors/developers.dart';
import 'package:conference_2023/ui/screen/contributors/staffs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ContributorsTab {
  developer,
  staff,
}

class ContributorsPage extends ConsumerStatefulWidget {
  const ContributorsPage({
    super.key,
    required this.tab,
  });

  final ContributorsTab tab;

  @override
  ConsumerState<ContributorsPage> createState() => _ContributorsPageState();
}

class _ContributorsPageState extends ConsumerState<ContributorsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  VoidCallback get _onChangeTab => () {
        if (_tabController.indexIsChanging) {
          /// Do nothing if the tab is animating.
          return;
        }

        final tab = ContributorsTab.values[_tabController.index];
        ContributorsRoute(
          tab: tab,
        ).go(context);
      };

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: ContributorsTab.values.length,
    )..addListener(_onChangeTab);
  }

  @override
  void dispose() {
    _tabController.removeListener(_onChangeTab);
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = ref.watch(localizationProvider);

    return Column(
      children: [
        TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: localizations.contributorsDeveloper,
            ),
            Tab(
              text: localizations.contributorsStaff,
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              Developers(),
              Staffs(),
            ],
          ),
        ),
      ],
    );
  }
}
