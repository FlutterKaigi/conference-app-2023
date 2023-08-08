// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_locale.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appLocaleHash() => r'd685c1d881cc33fd215caac3978c1dfff8bab8d4';

/// A provider that returns the current [Locale].
///
/// This provider is updated when the user changes the system locale,
/// or when the user changes the [LocalizationMode] in settings.
///
/// Copied from [appLocale].
@ProviderFor(appLocale)
final appLocaleProvider = AutoDisposeProvider<Locale>.internal(
  appLocale,
  name: r'appLocaleProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appLocaleHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AppLocaleRef = AutoDisposeProviderRef<Locale>;
String _$localesHash() => r'b8584719ef774b3ad656feffcb77d633dbc14bd1';

/// A provider that returns the [locale] of the system.
///
/// Copied from [locales].
@ProviderFor(locales)
final localesProvider = AutoDisposeStreamProvider<List<Locale>>.internal(
  locales,
  name: r'localesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$localesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LocalesRef = AutoDisposeStreamProviderRef<List<Locale>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
