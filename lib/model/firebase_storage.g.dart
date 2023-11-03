// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_storage.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$imageDownloadUrlHash() => r'a80838addf12f1a174387e2f2f4e148f9a1a12c6';

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

/// See also [imageDownloadUrl].
@ProviderFor(imageDownloadUrl)
const imageDownloadUrlProvider = ImageDownloadUrlFamily();

/// See also [imageDownloadUrl].
class ImageDownloadUrlFamily extends Family<AsyncValue<String>> {
  /// See also [imageDownloadUrl].
  const ImageDownloadUrlFamily();

  /// See also [imageDownloadUrl].
  ImageDownloadUrlProvider call(
    String path,
  ) {
    return ImageDownloadUrlProvider(
      path,
    );
  }

  @override
  ImageDownloadUrlProvider getProviderOverride(
    covariant ImageDownloadUrlProvider provider,
  ) {
    return call(
      provider.path,
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
  String? get name => r'imageDownloadUrlProvider';
}

/// See also [imageDownloadUrl].
class ImageDownloadUrlProvider extends AutoDisposeFutureProvider<String> {
  /// See also [imageDownloadUrl].
  ImageDownloadUrlProvider(
    String path,
  ) : this._internal(
          (ref) => imageDownloadUrl(
            ref as ImageDownloadUrlRef,
            path,
          ),
          from: imageDownloadUrlProvider,
          name: r'imageDownloadUrlProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$imageDownloadUrlHash,
          dependencies: ImageDownloadUrlFamily._dependencies,
          allTransitiveDependencies:
              ImageDownloadUrlFamily._allTransitiveDependencies,
          path: path,
        );

  ImageDownloadUrlProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.path,
  }) : super.internal();

  final String path;

  @override
  Override overrideWith(
    FutureOr<String> Function(ImageDownloadUrlRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ImageDownloadUrlProvider._internal(
        (ref) => create(ref as ImageDownloadUrlRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        path: path,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _ImageDownloadUrlProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ImageDownloadUrlProvider && other.path == path;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, path.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ImageDownloadUrlRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `path` of this provider.
  String get path;
}

class _ImageDownloadUrlProviderElement
    extends AutoDisposeFutureProviderElement<String> with ImageDownloadUrlRef {
  _ImageDownloadUrlProviderElement(super.provider);

  @override
  String get path => (origin as ImageDownloadUrlProvider).path;
}

String _$imageReferenceHash() => r'5790d8ad2d11a5e7713513105d130b3b2f18bf8f';

/// See also [imageReference].
@ProviderFor(imageReference)
const imageReferenceProvider = ImageReferenceFamily();

/// See also [imageReference].
class ImageReferenceFamily extends Family<Reference> {
  /// See also [imageReference].
  const ImageReferenceFamily();

  /// See also [imageReference].
  ImageReferenceProvider call(
    String path,
  ) {
    return ImageReferenceProvider(
      path,
    );
  }

  @override
  ImageReferenceProvider getProviderOverride(
    covariant ImageReferenceProvider provider,
  ) {
    return call(
      provider.path,
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
  String? get name => r'imageReferenceProvider';
}

/// See also [imageReference].
class ImageReferenceProvider extends AutoDisposeProvider<Reference> {
  /// See also [imageReference].
  ImageReferenceProvider(
    String path,
  ) : this._internal(
          (ref) => imageReference(
            ref as ImageReferenceRef,
            path,
          ),
          from: imageReferenceProvider,
          name: r'imageReferenceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$imageReferenceHash,
          dependencies: ImageReferenceFamily._dependencies,
          allTransitiveDependencies:
              ImageReferenceFamily._allTransitiveDependencies,
          path: path,
        );

  ImageReferenceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.path,
  }) : super.internal();

  final String path;

  @override
  Override overrideWith(
    Reference Function(ImageReferenceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ImageReferenceProvider._internal(
        (ref) => create(ref as ImageReferenceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        path: path,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Reference> createElement() {
    return _ImageReferenceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ImageReferenceProvider && other.path == path;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, path.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ImageReferenceRef on AutoDisposeProviderRef<Reference> {
  /// The parameter `path` of this provider.
  String get path;
}

class _ImageReferenceProviderElement
    extends AutoDisposeProviderElement<Reference> with ImageReferenceRef {
  _ImageReferenceProviderElement(super.provider);

  @override
  String get path => (origin as ImageReferenceProvider).path;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
