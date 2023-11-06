// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$storageUidIconPathHash() =>
    r'419d1299f46842f9d08688cb263d0ac3f32024d1';

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

/// See also [storageUidIconPath].
@ProviderFor(storageUidIconPath)
const storageUidIconPathProvider = StorageUidIconPathFamily();

/// See also [storageUidIconPath].
class StorageUidIconPathFamily extends Family<AsyncValue<String>> {
  /// See also [storageUidIconPath].
  const StorageUidIconPathFamily();

  /// See also [storageUidIconPath].
  StorageUidIconPathProvider call(
    String? id,
  ) {
    return StorageUidIconPathProvider(
      id,
    );
  }

  @override
  StorageUidIconPathProvider getProviderOverride(
    covariant StorageUidIconPathProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'storageUidIconPathProvider';
}

/// See also [storageUidIconPath].
class StorageUidIconPathProvider extends AutoDisposeFutureProvider<String> {
  /// See also [storageUidIconPath].
  StorageUidIconPathProvider(
    String? id,
  ) : this._internal(
          (ref) => storageUidIconPath(
            ref as StorageUidIconPathRef,
            id,
          ),
          from: storageUidIconPathProvider,
          name: r'storageUidIconPathProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$storageUidIconPathHash,
          dependencies: StorageUidIconPathFamily._dependencies,
          allTransitiveDependencies:
              StorageUidIconPathFamily._allTransitiveDependencies,
          id: id,
        );

  StorageUidIconPathProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String? id;

  @override
  Override overrideWith(
    FutureOr<String> Function(StorageUidIconPathRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StorageUidIconPathProvider._internal(
        (ref) => create(ref as StorageUidIconPathRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _StorageUidIconPathProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StorageUidIconPathProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin StorageUidIconPathRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `id` of this provider.
  String? get id;
}

class _StorageUidIconPathProviderElement
    extends AutoDisposeFutureProviderElement<String>
    with StorageUidIconPathRef {
  _StorageUidIconPathProviderElement(super.provider);

  @override
  String? get id => (origin as StorageUidIconPathProvider).id;
}

String _$profileImageUrlHash() => r'22fc5ce4de5d052aa3904d8011fdbea4b50c6233';

/// See also [profileImageUrl].
@ProviderFor(profileImageUrl)
final profileImageUrlProvider = AutoDisposeFutureProvider<String>.internal(
  profileImageUrl,
  name: r'profileImageUrlProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$profileImageUrlHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProfileImageUrlRef = AutoDisposeFutureProviderRef<String>;
String _$userNameHash() => r'4378d6fab50d642b3988b2e61a46b0447cd61cbb';

/// See also [UserName].
@ProviderFor(UserName)
final userNameProvider = AutoDisposeNotifierProvider<UserName, String>.internal(
  UserName.new,
  name: r'userNameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserName = AutoDisposeNotifier<String>;
String _$websiteUrlHash() => r'66ffd84462813fb9f8841f88da0594d961d11158';

/// See also [WebsiteUrl].
@ProviderFor(WebsiteUrl)
final websiteUrlProvider =
    AutoDisposeNotifierProvider<WebsiteUrl, String>.internal(
  WebsiteUrl.new,
  name: r'websiteUrlProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$websiteUrlHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$WebsiteUrl = AutoDisposeNotifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
