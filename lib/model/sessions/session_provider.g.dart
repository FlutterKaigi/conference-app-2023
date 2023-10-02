// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sessionHash() => r'2a3467b2467dbdc70057cee67d0f89fe6a85d6c6';

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

/// See also [session].
@ProviderFor(session)
const sessionProvider = SessionFamily();

/// See also [session].
class SessionFamily extends Family<Session> {
  /// See also [session].
  const SessionFamily();

  /// See also [session].
  SessionProvider call(
    String id,
  ) {
    return SessionProvider(
      id,
    );
  }

  @override
  SessionProvider getProviderOverride(
    covariant SessionProvider provider,
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
  String? get name => r'sessionProvider';
}

/// See also [session].
class SessionProvider extends AutoDisposeProvider<Session> {
  /// See also [session].
  SessionProvider(
    String id,
  ) : this._internal(
          (ref) => session(
            ref as SessionRef,
            id,
          ),
          from: sessionProvider,
          name: r'sessionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sessionHash,
          dependencies: SessionFamily._dependencies,
          allTransitiveDependencies: SessionFamily._allTransitiveDependencies,
          id: id,
        );

  SessionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    Session Function(SessionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SessionProvider._internal(
        (ref) => create(ref as SessionRef),
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
  AutoDisposeProviderElement<Session> createElement() {
    return _SessionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SessionProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SessionRef on AutoDisposeProviderRef<Session> {
  /// The parameter `id` of this provider.
  String get id;
}

class _SessionProviderElement extends AutoDisposeProviderElement<Session>
    with SessionRef {
  _SessionProviderElement(super.provider);

  @override
  String get id => (origin as SessionProvider).id;
}

String _$sessionsHash() => r'd7261bdaa60ad1cded79bc9d8c8da2522784583c';

/// See also [sessions].
@ProviderFor(sessions)
const sessionsProvider = SessionsFamily();

/// See also [sessions].
class SessionsFamily extends Family<List<Session>> {
  /// See also [sessions].
  const SessionsFamily();

  /// See also [sessions].
  SessionsProvider call(
    Room room,
  ) {
    return SessionsProvider(
      room,
    );
  }

  @override
  SessionsProvider getProviderOverride(
    covariant SessionsProvider provider,
  ) {
    return call(
      provider.room,
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
  String? get name => r'sessionsProvider';
}

/// See also [sessions].
class SessionsProvider extends AutoDisposeProvider<List<Session>> {
  /// See also [sessions].
  SessionsProvider(
    Room room,
  ) : this._internal(
          (ref) => sessions(
            ref as SessionsRef,
            room,
          ),
          from: sessionsProvider,
          name: r'sessionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sessionsHash,
          dependencies: SessionsFamily._dependencies,
          allTransitiveDependencies: SessionsFamily._allTransitiveDependencies,
          room: room,
        );

  SessionsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.room,
  }) : super.internal();

  final Room room;

  @override
  Override overrideWith(
    List<Session> Function(SessionsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SessionsProvider._internal(
        (ref) => create(ref as SessionsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        room: room,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<List<Session>> createElement() {
    return _SessionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SessionsProvider && other.room == room;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, room.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SessionsRef on AutoDisposeProviderRef<List<Session>> {
  /// The parameter `room` of this provider.
  Room get room;
}

class _SessionsProviderElement extends AutoDisposeProviderElement<List<Session>>
    with SessionsRef {
  _SessionsProviderElement(super.provider);

  @override
  Room get room => (origin as SessionsProvider).room;
}

String _$sessionDataHash() => r'894667e8fe8f4f7465e1af5e3f149586e187bbe9';

/// See also [sessionData].
@ProviderFor(sessionData)
final sessionDataProvider =
    AutoDisposeProvider<Map<Room, List<Session>>>.internal(
  sessionData,
  name: r'sessionDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$sessionDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SessionDataRef = AutoDisposeProviderRef<Map<Room, List<Session>>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
