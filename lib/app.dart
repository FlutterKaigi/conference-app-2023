import 'package:accessibility_tools/accessibility_tools.dart';
import 'package:conference_2023/ui/router/router_provider.dart';
import 'package:conference_2023/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final theme = ref.watch(themeProvider);
    final darkTheme = ref.watch(darkThemeProvider);

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: theme,
      darkTheme: darkTheme,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      builder: (context, child) => AccessibilityTools(
        child: child,
      ),
    );
  }
}
