import 'package:confapp2023/gen/assets.gen.dart';
import 'package:confapp2023/provider/theme_provider.dart';
import 'package:confapp2023/screens/index.dart';
import 'package:confapp2023/screens/setting.dart';
import 'package:confapp2023/screens/staff.dart';
import 'package:confapp2023/widgets/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DrawerMenu extends HookConsumerWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Drawer build(BuildContext context, WidgetRef ref) {
    final appLocalizations = AppLocalizations.of(context)!;
    var theme = ref.watch(themeProvider);

    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: SizedBox(
              height: 82,
              width: MediaQuery.of(context).size.width,
              child: SvgPicture.asset(
                Assets.flutterkaigiNavbarLightLogo,
                width: 160,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (BuildContext context) => const TopScreen(),
                    ),
                  );
                },
                child: ListTile(
                  leading: const Icon(Icons.home),
                  title: Text(
                    appLocalizations.top,
                    style: const TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (BuildContext context) => const StaffScreen(),
                    ),
                  );
                },
                child: ListTile(
                  leading: const Icon(Icons.people),
                  title: Text(
                    appLocalizations.staff,
                    style: const TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (BuildContext context) => const SettingScreen(),
                    ),
                  );
                },
                child: ListTile(
                  leading: const Icon(Icons.apps),
                  title: Text(
                    appLocalizations.about,
                    style: const TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              // ToDo: ダークモード時のスタイルを定義してから
              if (SWITCH_THEME)
                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: ListTile(
                            leading: const Icon(Icons.star),
                            title: Text(
                              appLocalizations.selectTheme,
                              style: const TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left,
                            )),
                      ),
                      Switch(
                        value: theme,
                        onChanged: (bool newValue) {
                          ref.watch(themeProvider.notifier).state = newValue;
                        },
                      ),
                    ],
                  ),
                ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
