import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.g.dart';

@riverpod
ThemeData theme(ThemeRef ref) => ThemeData(
      colorScheme: lightColorScheme,
      useMaterial3: true,
    );

@riverpod
ThemeData darkTheme(DarkThemeRef ref) => ThemeData(
      colorScheme: darkColorScheme,
      useMaterial3: true,
    );

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF2342FB),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFDFE0FF),
  onPrimaryContainer: Color(0xFF000D60),
  secondary: Color(0xFF5B5D72),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFE0E1F9),
  onSecondaryContainer: Color(0xFF181A2C),
  tertiary: Color(0xFF77536C),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFFFD7F0),
  onTertiaryContainer: Color(0xFF2D1127),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFFFBFF),
  onBackground: Color(0xFF1B1B1F),
  outline: Color(0xFF777680),
  onInverseSurface: Color(0xFFF3F0F4),
  inverseSurface: Color(0xFF303034),
  inversePrimary: Color(0xFFBCC3FF),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF2342FB),
  outlineVariant: Color(0xFFC7C5D0),
  scrim: Color(0xFF000000),
  surface: Color(0xFFFBF8FD),
  onSurface: Color(0xFF1B1B1F),
  surfaceVariant: Color(0xFFE3E1EC),
  onSurfaceVariant: Color(0xFF46464F),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFBCC3FF),
  onPrimary: Color(0xFF001A97),
  primaryContainer: Color(0xFF0028D3),
  onPrimaryContainer: Color(0xFFDFE0FF),
  secondary: Color(0xFFC4C5DD),
  onSecondary: Color(0xFF2D2F42),
  secondaryContainer: Color(0xFF434559),
  onSecondaryContainer: Color(0xFFE0E1F9),
  tertiary: Color(0xFFE6BAD7),
  onTertiary: Color(0xFF45263D),
  tertiaryContainer: Color(0xFF5D3C54),
  onTertiaryContainer: Color(0xFFFFD7F0),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF1B1B1F),
  onBackground: Color(0xFFE4E1E6),
  outline: Color(0xFF90909A),
  onInverseSurface: Color(0xFF1B1B1F),
  inverseSurface: Color(0xFFE4E1E6),
  inversePrimary: Color(0xFF2342FB),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFBCC3FF),
  outlineVariant: Color(0xFF46464F),
  scrim: Color(0xFF000000),
  surface: Color(0xFF131316),
  onSurface: Color(0xFFC8C5CA),
  surfaceVariant: Color(0xFF46464F),
  onSurfaceVariant: Color(0xFFC7C5D0),
);
