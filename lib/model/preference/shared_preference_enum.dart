enum PreferenceKey {
  themeMode('theme_mode'),
  localizationMode('localization_mode'),
  fontFamily('font_family');

  const PreferenceKey(this.value);

  final String value;
}
