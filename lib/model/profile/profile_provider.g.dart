// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileImageUrlHash() => r'29722404499fc1a23c88e4b6e0cd0a70a80a38d2';

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
String _$uploadImageHash() => r'6a8cb2952745acd366d887299e62cb7f32946c93';

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

/// See also [uploadImage].
@ProviderFor(uploadImage)
const uploadImageProvider = UploadImageFamily();

/// See also [uploadImage].
class UploadImageFamily extends Family<ImageUploadFunction> {
  /// See also [uploadImage].
  const UploadImageFamily();

  /// See also [uploadImage].
  UploadImageProvider call(
    String userId,
  ) {
    return UploadImageProvider(
      userId,
    );
  }

  @override
  UploadImageProvider getProviderOverride(
    covariant UploadImageProvider provider,
  ) {
    return call(
      provider.userId,
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
  String? get name => r'uploadImageProvider';
}

/// See also [uploadImage].
class UploadImageProvider extends AutoDisposeProvider<ImageUploadFunction> {
  /// See also [uploadImage].
  UploadImageProvider(
    String userId,
  ) : this._internal(
          (ref) => uploadImage(
            ref as UploadImageRef,
            userId,
          ),
          from: uploadImageProvider,
          name: r'uploadImageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$uploadImageHash,
          dependencies: UploadImageFamily._dependencies,
          allTransitiveDependencies:
              UploadImageFamily._allTransitiveDependencies,
          userId: userId,
        );

  UploadImageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  Override overrideWith(
    ImageUploadFunction Function(UploadImageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UploadImageProvider._internal(
        (ref) => create(ref as UploadImageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<ImageUploadFunction> createElement() {
    return _UploadImageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UploadImageProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UploadImageRef on AutoDisposeProviderRef<ImageUploadFunction> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _UploadImageProviderElement
    extends AutoDisposeProviderElement<ImageUploadFunction>
    with UploadImageRef {
  _UploadImageProviderElement(super.provider);

  @override
  String get userId => (origin as UploadImageProvider).userId;
}

String _$profileNotifierHash() => r'800cbb1ff760df272199eb2fd4aa4658d4b4d566';

/// See also [ProfileNotifier].
@ProviderFor(ProfileNotifier)
final profileNotifierProvider =
    AutoDisposeAsyncNotifierProvider<ProfileNotifier, Profile>.internal(
  ProfileNotifier.new,
  name: r'profileNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$profileNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProfileNotifier = AutoDisposeAsyncNotifier<Profile>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
