// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$themeHash() => r'9e728513d8885091a9a0cb0ff30147a8dd394431';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef ThemeRef = AutoDisposeProviderRef<ThemeData>;

/// See also [theme].
@ProviderFor(theme)
const themeProvider = ThemeFamily();

/// See also [theme].
class ThemeFamily extends Family<ThemeData> {
  /// See also [theme].
  const ThemeFamily();

  /// See also [theme].
  ThemeProvider call(
    ColorScheme? colorScheme,
  ) {
    return ThemeProvider(
      colorScheme,
    );
  }

  @override
  ThemeProvider getProviderOverride(
    covariant ThemeProvider provider,
  ) {
    return call(
      provider.colorScheme,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'themeProvider';
}

/// See also [theme].
class ThemeProvider extends AutoDisposeProvider<ThemeData> {
  /// See also [theme].
  ThemeProvider(
    this.colorScheme,
  ) : super.internal(
          (ref) => theme(
            ref,
            colorScheme,
          ),
          from: themeProvider,
          name: r'themeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$themeHash,
          dependencies: ThemeFamily._dependencies,
          allTransitiveDependencies: ThemeFamily._allTransitiveDependencies,
        );

  final ColorScheme? colorScheme;

  @override
  bool operator ==(Object other) {
    return other is ThemeProvider && other.colorScheme == colorScheme;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, colorScheme.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$darkThemeHash() => r'57a65bc1f5ef45e985c255122e36f40bd00acd66';
typedef DarkThemeRef = AutoDisposeProviderRef<ThemeData>;

/// See also [darkTheme].
@ProviderFor(darkTheme)
const darkThemeProvider = DarkThemeFamily();

/// See also [darkTheme].
class DarkThemeFamily extends Family<ThemeData> {
  /// See also [darkTheme].
  const DarkThemeFamily();

  /// See also [darkTheme].
  DarkThemeProvider call(
    ColorScheme? colorScheme,
  ) {
    return DarkThemeProvider(
      colorScheme,
    );
  }

  @override
  DarkThemeProvider getProviderOverride(
    covariant DarkThemeProvider provider,
  ) {
    return call(
      provider.colorScheme,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'darkThemeProvider';
}

/// See also [darkTheme].
class DarkThemeProvider extends AutoDisposeProvider<ThemeData> {
  /// See also [darkTheme].
  DarkThemeProvider(
    this.colorScheme,
  ) : super.internal(
          (ref) => darkTheme(
            ref,
            colorScheme,
          ),
          from: darkThemeProvider,
          name: r'darkThemeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$darkThemeHash,
          dependencies: DarkThemeFamily._dependencies,
          allTransitiveDependencies: DarkThemeFamily._allTransitiveDependencies,
        );

  final ColorScheme? colorScheme;

  @override
  bool operator ==(Object other) {
    return other is DarkThemeProvider && other.colorScheme == colorScheme;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, colorScheme.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
