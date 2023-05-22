import 'package:conference_2023/home.dart';
import 'package:conference_2023/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    final darkTheme = ref.watch(darkThemeProvider);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      darkTheme: darkTheme,
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}