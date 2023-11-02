// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileImageUrlHash() => r'b17d1dd9c8ef498f1f9962d500711338b533c5b7';

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
String _$profileNotifierHash() => r'de9bb8958c5039950831aafcb142ddffc400b3a6';

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
