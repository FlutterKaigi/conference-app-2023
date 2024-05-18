// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lunch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoreList _$StoreListFromJson(Map<String, dynamic> json) {
  return _LunchList.fromJson(json);
}

/// @nodoc
mixin _$StoreList {
  List<Store> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreListCopyWith<StoreList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreListCopyWith<$Res> {
  factory $StoreListCopyWith(StoreList value, $Res Function(StoreList) then) =
      _$StoreListCopyWithImpl<$Res, StoreList>;
  @useResult
  $Res call({List<Store> items});
}

/// @nodoc
class _$StoreListCopyWithImpl<$Res, $Val extends StoreList>
    implements $StoreListCopyWith<$Res> {
  _$StoreListCopyWithImpl(this._value, this._then);

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
              as List<Store>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LunchListImplCopyWith<$Res>
    implements $StoreListCopyWith<$Res> {
  factory _$$LunchListImplCopyWith(
          _$LunchListImpl value, $Res Function(_$LunchListImpl) then) =
      __$$LunchListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Store> items});
}

/// @nodoc
class __$$LunchListImplCopyWithImpl<$Res>
    extends _$StoreListCopyWithImpl<$Res, _$LunchListImpl>
    implements _$$LunchListImplCopyWith<$Res> {
  __$$LunchListImplCopyWithImpl(
      _$LunchListImpl _value, $Res Function(_$LunchListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$LunchListImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Store>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LunchListImpl with DiagnosticableTreeMixin implements _LunchList {
  const _$LunchListImpl({required final List<Store> items}) : _items = items;

  factory _$LunchListImpl.fromJson(Map<String, dynamic> json) =>
      _$$LunchListImplFromJson(json);

  final List<Store> _items;
  @override
  List<Store> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StoreList(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StoreList'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LunchListImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LunchListImplCopyWith<_$LunchListImpl> get copyWith =>
      __$$LunchListImplCopyWithImpl<_$LunchListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LunchListImplToJson(
      this,
    );
  }
}

abstract class _LunchList implements StoreList {
  const factory _LunchList({required final List<Store> items}) =
      _$LunchListImpl;

  factory _LunchList.fromJson(Map<String, dynamic> json) =
      _$LunchListImpl.fromJson;

  @override
  List<Store> get items;
  @override
  @JsonKey(ignore: true)
  _$$LunchListImplCopyWith<_$LunchListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Store _$StoreFromJson(Map<String, dynamic> json) {
  return _Lunch.fromJson(json);
}

/// @nodoc
mixin _$Store {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get routeTime => throw _privateConstructorUsedError;
  String get recommendedMenu => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  String get externalLink => throw _privateConstructorUsedError;
  String get navitimeMapLink => throw _privateConstructorUsedError;
  String get googleMapLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreCopyWith<Store> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreCopyWith<$Res> {
  factory $StoreCopyWith(Store value, $Res Function(Store) then) =
      _$StoreCopyWithImpl<$Res, Store>;
  @useResult
  $Res call(
      {String id,
      String name,
      String routeTime,
      String recommendedMenu,
      String comment,
      String externalLink,
      String navitimeMapLink,
      String googleMapLink});
}

/// @nodoc
class _$StoreCopyWithImpl<$Res, $Val extends Store>
    implements $StoreCopyWith<$Res> {
  _$StoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? routeTime = null,
    Object? recommendedMenu = null,
    Object? comment = null,
    Object? externalLink = null,
    Object? navitimeMapLink = null,
    Object? googleMapLink = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      routeTime: null == routeTime
          ? _value.routeTime
          : routeTime // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedMenu: null == recommendedMenu
          ? _value.recommendedMenu
          : recommendedMenu // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      externalLink: null == externalLink
          ? _value.externalLink
          : externalLink // ignore: cast_nullable_to_non_nullable
              as String,
      navitimeMapLink: null == navitimeMapLink
          ? _value.navitimeMapLink
          : navitimeMapLink // ignore: cast_nullable_to_non_nullable
              as String,
      googleMapLink: null == googleMapLink
          ? _value.googleMapLink
          : googleMapLink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LunchImplCopyWith<$Res> implements $StoreCopyWith<$Res> {
  factory _$$LunchImplCopyWith(
          _$LunchImpl value, $Res Function(_$LunchImpl) then) =
      __$$LunchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String routeTime,
      String recommendedMenu,
      String comment,
      String externalLink,
      String navitimeMapLink,
      String googleMapLink});
}

/// @nodoc
class __$$LunchImplCopyWithImpl<$Res>
    extends _$StoreCopyWithImpl<$Res, _$LunchImpl>
    implements _$$LunchImplCopyWith<$Res> {
  __$$LunchImplCopyWithImpl(
      _$LunchImpl _value, $Res Function(_$LunchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? routeTime = null,
    Object? recommendedMenu = null,
    Object? comment = null,
    Object? externalLink = null,
    Object? navitimeMapLink = null,
    Object? googleMapLink = null,
  }) {
    return _then(_$LunchImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      routeTime: null == routeTime
          ? _value.routeTime
          : routeTime // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedMenu: null == recommendedMenu
          ? _value.recommendedMenu
          : recommendedMenu // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      externalLink: null == externalLink
          ? _value.externalLink
          : externalLink // ignore: cast_nullable_to_non_nullable
              as String,
      navitimeMapLink: null == navitimeMapLink
          ? _value.navitimeMapLink
          : navitimeMapLink // ignore: cast_nullable_to_non_nullable
              as String,
      googleMapLink: null == googleMapLink
          ? _value.googleMapLink
          : googleMapLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LunchImpl with DiagnosticableTreeMixin implements _Lunch {
  const _$LunchImpl(
      {required this.id,
      required this.name,
      required this.routeTime,
      required this.recommendedMenu,
      required this.comment,
      required this.externalLink,
      required this.navitimeMapLink,
      required this.googleMapLink});

  factory _$LunchImpl.fromJson(Map<String, dynamic> json) =>
      _$$LunchImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String routeTime;
  @override
  final String recommendedMenu;
  @override
  final String comment;
  @override
  final String externalLink;
  @override
  final String navitimeMapLink;
  @override
  final String googleMapLink;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Store(id: $id, name: $name, routeTime: $routeTime, recommendedMenu: $recommendedMenu, comment: $comment, externalLink: $externalLink, navitimeMapLink: $navitimeMapLink, googleMapLink: $googleMapLink)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Store'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('routeTime', routeTime))
      ..add(DiagnosticsProperty('recommendedMenu', recommendedMenu))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('externalLink', externalLink))
      ..add(DiagnosticsProperty('navitimeMapLink', navitimeMapLink))
      ..add(DiagnosticsProperty('googleMapLink', googleMapLink));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LunchImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.routeTime, routeTime) ||
                other.routeTime == routeTime) &&
            (identical(other.recommendedMenu, recommendedMenu) ||
                other.recommendedMenu == recommendedMenu) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.externalLink, externalLink) ||
                other.externalLink == externalLink) &&
            (identical(other.navitimeMapLink, navitimeMapLink) ||
                other.navitimeMapLink == navitimeMapLink) &&
            (identical(other.googleMapLink, googleMapLink) ||
                other.googleMapLink == googleMapLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, routeTime,
      recommendedMenu, comment, externalLink, navitimeMapLink, googleMapLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LunchImplCopyWith<_$LunchImpl> get copyWith =>
      __$$LunchImplCopyWithImpl<_$LunchImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LunchImplToJson(
      this,
    );
  }
}

abstract class _Lunch implements Store {
  const factory _Lunch(
      {required final String id,
      required final String name,
      required final String routeTime,
      required final String recommendedMenu,
      required final String comment,
      required final String externalLink,
      required final String navitimeMapLink,
      required final String googleMapLink}) = _$LunchImpl;

  factory _Lunch.fromJson(Map<String, dynamic> json) = _$LunchImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get routeTime;
  @override
  String get recommendedMenu;
  @override
  String get comment;
  @override
  String get externalLink;
  @override
  String get navitimeMapLink;
  @override
  String get googleMapLink;
  @override
  @JsonKey(ignore: true)
  _$$LunchImplCopyWith<_$LunchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
