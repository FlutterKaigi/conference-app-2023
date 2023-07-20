// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'developer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeveloperList _$DeveloperListFromJson(Map<String, dynamic> json) {
  return _DeveloperList.fromJson(json);
}

/// @nodoc
mixin _$DeveloperList {
  List<Developer> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeveloperListCopyWith<DeveloperList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeveloperListCopyWith<$Res> {
  factory $DeveloperListCopyWith(
          DeveloperList value, $Res Function(DeveloperList) then) =
      _$DeveloperListCopyWithImpl<$Res, DeveloperList>;
  @useResult
  $Res call({List<Developer> items});
}

/// @nodoc
class _$DeveloperListCopyWithImpl<$Res, $Val extends DeveloperList>
    implements $DeveloperListCopyWith<$Res> {
  _$DeveloperListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Developer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeveloperListCopyWith<$Res>
    implements $DeveloperListCopyWith<$Res> {
  factory _$$_DeveloperListCopyWith(
          _$_DeveloperList value, $Res Function(_$_DeveloperList) then) =
      __$$_DeveloperListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Developer> items});
}

/// @nodoc
class __$$_DeveloperListCopyWithImpl<$Res>
    extends _$DeveloperListCopyWithImpl<$Res, _$_DeveloperList>
    implements _$$_DeveloperListCopyWith<$Res> {
  __$$_DeveloperListCopyWithImpl(
      _$_DeveloperList _value, $Res Function(_$_DeveloperList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$_DeveloperList(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Developer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeveloperList with DiagnosticableTreeMixin implements _DeveloperList {
  const _$_DeveloperList({required final List<Developer> items})
      : _items = items;

  factory _$_DeveloperList.fromJson(Map<String, dynamic> json) =>
      _$$_DeveloperListFromJson(json);

  final List<Developer> _items;
  @override
  List<Developer> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeveloperList(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeveloperList'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeveloperList &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeveloperListCopyWith<_$_DeveloperList> get copyWith =>
      __$$_DeveloperListCopyWithImpl<_$_DeveloperList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeveloperListToJson(
      this,
    );
  }
}

abstract class _DeveloperList implements DeveloperList {
  const factory _DeveloperList({required final List<Developer> items}) =
      _$_DeveloperList;

  factory _DeveloperList.fromJson(Map<String, dynamic> json) =
      _$_DeveloperList.fromJson;

  @override
  List<Developer> get items;
  @override
  @JsonKey(ignore: true)
  _$$_DeveloperListCopyWith<_$_DeveloperList> get copyWith =>
      throw _privateConstructorUsedError;
}

Developer _$DeveloperFromJson(Map<String, dynamic> json) {
  return _Developer.fromJson(json);
}

/// @nodoc
mixin _$Developer {
  String get name => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeveloperCopyWith<Developer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeveloperCopyWith<$Res> {
  factory $DeveloperCopyWith(Developer value, $Res Function(Developer) then) =
      _$DeveloperCopyWithImpl<$Res, Developer>;
  @useResult
  $Res call({String name, String avatarUrl, String url});
}

/// @nodoc
class _$DeveloperCopyWithImpl<$Res, $Val extends Developer>
    implements $DeveloperCopyWith<$Res> {
  _$DeveloperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatarUrl = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeveloperCopyWith<$Res> implements $DeveloperCopyWith<$Res> {
  factory _$$_DeveloperCopyWith(
          _$_Developer value, $Res Function(_$_Developer) then) =
      __$$_DeveloperCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String avatarUrl, String url});
}

/// @nodoc
class __$$_DeveloperCopyWithImpl<$Res>
    extends _$DeveloperCopyWithImpl<$Res, _$_Developer>
    implements _$$_DeveloperCopyWith<$Res> {
  __$$_DeveloperCopyWithImpl(
      _$_Developer _value, $Res Function(_$_Developer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatarUrl = null,
    Object? url = null,
  }) {
    return _then(_$_Developer(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Developer with DiagnosticableTreeMixin implements _Developer {
  const _$_Developer(
      {required this.name, required this.avatarUrl, required this.url});

  factory _$_Developer.fromJson(Map<String, dynamic> json) =>
      _$$_DeveloperFromJson(json);

  @override
  final String name;
  @override
  final String avatarUrl;
  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Developer(name: $name, avatarUrl: $avatarUrl, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Developer'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('avatarUrl', avatarUrl))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Developer &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, avatarUrl, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeveloperCopyWith<_$_Developer> get copyWith =>
      __$$_DeveloperCopyWithImpl<_$_Developer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeveloperToJson(
      this,
    );
  }
}

abstract class _Developer implements Developer {
  const factory _Developer(
      {required final String name,
      required final String avatarUrl,
      required final String url}) = _$_Developer;

  factory _Developer.fromJson(Map<String, dynamic> json) =
      _$_Developer.fromJson;

  @override
  String get name;
  @override
  String get avatarUrl;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_DeveloperCopyWith<_$_Developer> get copyWith =>
      throw _privateConstructorUsedError;
}
