// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$themeHash() => r'110acf19fd44ceed6493c7ea004be7d8afd88eba';

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
    ColorScheme? colorScheme,
  ) : this._internal(
          (ref) => theme(
            ref as ThemeRef,
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
          colorScheme: colorScheme,
        );

  ThemeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.colorScheme,
  }) : super.internal();

  final ColorScheme? colorScheme;

  @override
  Override overrideWith(
    ThemeData Function(ThemeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ThemeProvider._internal(
        (ref) => create(ref as ThemeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        colorScheme: colorScheme,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<ThemeData> createElement() {
    return _ThemeProviderElement(this);
  }

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

mixin ThemeRef on AutoDisposeProviderRef<ThemeData> {
  /// The parameter `colorScheme` of this provider.
  ColorScheme? get colorScheme;
}

class _ThemeProviderElement extends AutoDisposeProviderElement<ThemeData>
    with ThemeRef {
  _ThemeProviderElement(super.provider);

  @override
  ColorScheme? get colorScheme => (origin as ThemeProvider).colorScheme;
}

String _$darkThemeHash() => r'de7b42139c3cd83213b8642741da01704150dccb';

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
    ColorScheme? colorScheme,
  ) : this._internal(
          (ref) => darkTheme(
            ref as DarkThemeRef,
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
          colorScheme: colorScheme,
        );

  DarkThemeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.colorScheme,
  }) : super.internal();

  final ColorScheme? colorScheme;

  @override
  Override overrideWith(
    ThemeData Function(DarkThemeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DarkThemeProvider._internal(
        (ref) => create(ref as DarkThemeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        colorScheme: colorScheme,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<ThemeData> createElement() {
    return _DarkThemeProviderElement(this);
  }

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

mixin DarkThemeRef on AutoDisposeProviderRef<ThemeData> {
  /// The parameter `colorScheme` of this provider.
  ColorScheme? get colorScheme;
}

class _DarkThemeProviderElement extends AutoDisposeProviderElement<ThemeData>
    with DarkThemeRef {
  _DarkThemeProviderElement(super.provider);

  @override
  ColorScheme? get colorScheme => (origin as DarkThemeProvider).colorScheme;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
