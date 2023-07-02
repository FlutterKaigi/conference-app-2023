import 'package:accessibility_tools/accessibility_tools.dart';
import 'package:conference_2023/l10n/locales_provider.dart';
import 'package:conference_2023/model/provider/theme_mode_notifier.dart';
import 'package:conference_2023/ui/router/router_provider.dart';
import 'package:conference_2023/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final theme = ref.watch(themeProvider);
    final darkTheme = ref.watch(darkThemeProvider);
    final themeMode = ref.watch(themeModeNotifierProvider);
    final appLocale = ref.watch(appLocaleProvider);

    return MaterialApp.router(
      title: 'FlutterKaigi 2023 Official App',
      theme: theme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ja'),
        Locale('en'),
      ],
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      builder: (context, child) => AccessibilityTools(
        child: Localizations.override(
          context: context,
          locale: appLocale,
          child: child,
        ),
      ),
    );
  }
}
