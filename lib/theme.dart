import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.g.dart';

@riverpod
ThemeData theme(ThemeRef ref) => ThemeData(
      colorScheme: ref.watch(logoColorSchemeProvider),
      useMaterial3: true,
    );

@riverpod
ThemeData darkTheme(DarkThemeRef ref) => ThemeData(
      colorScheme: ref.watch(logoDarkColorSchemeProvider),
      useMaterial3: true,
    );

@riverpod
ColorScheme logoColorScheme(LogoColorSchemeRef ref) =>
    throw Exception('Provider was not initialized');

@riverpod
ColorScheme logoDarkColorScheme(LogoDarkColorSchemeRef ref) =>
    throw Exception('Provider was not initialized');
