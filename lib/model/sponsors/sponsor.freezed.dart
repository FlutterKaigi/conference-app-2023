// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sponsor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Sponsors _$SponsorsFromJson(Map<String, dynamic> json) {
  return _SponsorList.fromJson(json);
}

/// @nodoc
mixin _$Sponsors {
  List<Sponsor> get platinum => throw _privateConstructorUsedError;
  List<Sponsor> get gold => throw _privateConstructorUsedError;
  List<Sponsor> get silver => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SponsorsCopyWith<Sponsors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorsCopyWith<$Res> {
  factory $SponsorsCopyWith(Sponsors value, $Res Function(Sponsors) then) =
      _$SponsorsCopyWithImpl<$Res, Sponsors>;
  @useResult
  $Res call({List<Sponsor> platinum, List<Sponsor> gold, List<Sponsor> silver});
}

/// @nodoc
class _$SponsorsCopyWithImpl<$Res, $Val extends Sponsors>
    implements $SponsorsCopyWith<$Res> {
  _$SponsorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platinum = null,
    Object? gold = null,
    Object? silver = null,
  }) {
    return _then(_value.copyWith(
      platinum: null == platinum
          ? _value.platinum
          : platinum // ignore: cast_nullable_to_non_nullable
              as List<Sponsor>,
      gold: null == gold
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as List<Sponsor>,
      silver: null == silver
          ? _value.silver
          : silver // ignore: cast_nullable_to_non_nullable
              as List<Sponsor>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SponsorListImplCopyWith<$Res>
    implements $SponsorsCopyWith<$Res> {
  factory _$$SponsorListImplCopyWith(
          _$SponsorListImpl value, $Res Function(_$SponsorListImpl) then) =
      __$$SponsorListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Sponsor> platinum, List<Sponsor> gold, List<Sponsor> silver});
}

/// @nodoc
class __$$SponsorListImplCopyWithImpl<$Res>
    extends _$SponsorsCopyWithImpl<$Res, _$SponsorListImpl>
    implements _$$SponsorListImplCopyWith<$Res> {
  __$$SponsorListImplCopyWithImpl(
      _$SponsorListImpl _value, $Res Function(_$SponsorListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platinum = null,
    Object? gold = null,
    Object? silver = null,
  }) {
    return _then(_$SponsorListImpl(
      platinum: null == platinum
          ? _value._platinum
          : platinum // ignore: cast_nullable_to_non_nullable
              as List<Sponsor>,
      gold: null == gold
          ? _value._gold
          : gold // ignore: cast_nullable_to_non_nullable
              as List<Sponsor>,
      silver: null == silver
          ? _value._silver
          : silver // ignore: cast_nullable_to_non_nullable
              as List<Sponsor>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SponsorListImpl with DiagnosticableTreeMixin implements _SponsorList {
  const _$SponsorListImpl(
      {required final List<Sponsor> platinum,
      required final List<Sponsor> gold,
      required final List<Sponsor> silver})
      : _platinum = platinum,
        _gold = gold,
        _silver = silver;

  factory _$SponsorListImpl.fromJson(Map<String, dynamic> json) =>
      _$$SponsorListImplFromJson(json);

  final List<Sponsor> _platinum;
  @override
  List<Sponsor> get platinum {
    if (_platinum is EqualUnmodifiableListView) return _platinum;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_platinum);
  }

  final List<Sponsor> _gold;
  @override
  List<Sponsor> get gold {
    if (_gold is EqualUnmodifiableListView) return _gold;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gold);
  }

  final List<Sponsor> _silver;
  @override
  List<Sponsor> get silver {
    if (_silver is EqualUnmodifiableListView) return _silver;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_silver);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Sponsors(platinum: $platinum, gold: $gold, silver: $silver)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Sponsors'))
      ..add(DiagnosticsProperty('platinum', platinum))
      ..add(DiagnosticsProperty('gold', gold))
      ..add(DiagnosticsProperty('silver', silver));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SponsorListImpl &&
            const DeepCollectionEquality().equals(other._platinum, _platinum) &&
            const DeepCollectionEquality().equals(other._gold, _gold) &&
            const DeepCollectionEquality().equals(other._silver, _silver));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_platinum),
      const DeepCollectionEquality().hash(_gold),
      const DeepCollectionEquality().hash(_silver));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SponsorListImplCopyWith<_$SponsorListImpl> get copyWith =>
      __$$SponsorListImplCopyWithImpl<_$SponsorListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SponsorListImplToJson(
      this,
    );
  }
}

abstract class _SponsorList implements Sponsors {
  const factory _SponsorList(
      {required final List<Sponsor> platinum,
      required final List<Sponsor> gold,
      required final List<Sponsor> silver}) = _$SponsorListImpl;

  factory _SponsorList.fromJson(Map<String, dynamic> json) =
      _$SponsorListImpl.fromJson;

  @override
  List<Sponsor> get platinum;
  @override
  List<Sponsor> get gold;
  @override
  List<Sponsor> get silver;
  @override
  @JsonKey(ignore: true)
  _$$SponsorListImplCopyWith<_$SponsorListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Sponsor _$SponsorFromJson(Map<String, dynamic> json) {
  return _Sponsor.fromJson(json);
}

/// @nodoc
mixin _$Sponsor {
  String get sponsorName => throw _privateConstructorUsedError;
  String get sponsorLinkUrl => throw _privateConstructorUsedError;
  String get sponsorLogoUrl => throw _privateConstructorUsedError;
  String get sponsorDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SponsorCopyWith<Sponsor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorCopyWith<$Res> {
  factory $SponsorCopyWith(Sponsor value, $Res Function(Sponsor) then) =
      _$SponsorCopyWithImpl<$Res, Sponsor>;
  @useResult
  $Res call(
      {String sponsorName,
      String sponsorLinkUrl,
      String sponsorLogoUrl,
      String sponsorDescription});
}

/// @nodoc
class _$SponsorCopyWithImpl<$Res, $Val extends Sponsor>
    implements $SponsorCopyWith<$Res> {
  _$SponsorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sponsorName = null,
    Object? sponsorLinkUrl = null,
    Object? sponsorLogoUrl = null,
    Object? sponsorDescription = null,
  }) {
    return _then(_value.copyWith(
      sponsorName: null == sponsorName
          ? _value.sponsorName
          : sponsorName // ignore: cast_nullable_to_non_nullable
              as String,
      sponsorLinkUrl: null == sponsorLinkUrl
          ? _value.sponsorLinkUrl
          : sponsorLinkUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sponsorLogoUrl: null == sponsorLogoUrl
          ? _value.sponsorLogoUrl
          : sponsorLogoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sponsorDescription: null == sponsorDescription
          ? _value.sponsorDescription
          : sponsorDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SponsorImplCopyWith<$Res> implements $SponsorCopyWith<$Res> {
  factory _$$SponsorImplCopyWith(
          _$SponsorImpl value, $Res Function(_$SponsorImpl) then) =
      __$$SponsorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sponsorName,
      String sponsorLinkUrl,
      String sponsorLogoUrl,
      String sponsorDescription});
}

/// @nodoc
class __$$SponsorImplCopyWithImpl<$Res>
    extends _$SponsorCopyWithImpl<$Res, _$SponsorImpl>
    implements _$$SponsorImplCopyWith<$Res> {
  __$$SponsorImplCopyWithImpl(
      _$SponsorImpl _value, $Res Function(_$SponsorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sponsorName = null,
    Object? sponsorLinkUrl = null,
    Object? sponsorLogoUrl = null,
    Object? sponsorDescription = null,
  }) {
    return _then(_$SponsorImpl(
      sponsorName: null == sponsorName
          ? _value.sponsorName
          : sponsorName // ignore: cast_nullable_to_non_nullable
              as String,
      sponsorLinkUrl: null == sponsorLinkUrl
          ? _value.sponsorLinkUrl
          : sponsorLinkUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sponsorLogoUrl: null == sponsorLogoUrl
          ? _value.sponsorLogoUrl
          : sponsorLogoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sponsorDescription: null == sponsorDescription
          ? _value.sponsorDescription
          : sponsorDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SponsorImpl with DiagnosticableTreeMixin implements _Sponsor {
  const _$SponsorImpl(
      {required this.sponsorName,
      required this.sponsorLinkUrl,
      required this.sponsorLogoUrl,
      required this.sponsorDescription});

  factory _$SponsorImpl.fromJson(Map<String, dynamic> json) =>
      _$$SponsorImplFromJson(json);

  @override
  final String sponsorName;
  @override
  final String sponsorLinkUrl;
  @override
  final String sponsorLogoUrl;
  @override
  final String sponsorDescription;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Sponsor(sponsorName: $sponsorName, sponsorLinkUrl: $sponsorLinkUrl, sponsorLogoUrl: $sponsorLogoUrl, sponsorDescription: $sponsorDescription)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Sponsor'))
      ..add(DiagnosticsProperty('sponsorName', sponsorName))
      ..add(DiagnosticsProperty('sponsorLinkUrl', sponsorLinkUrl))
      ..add(DiagnosticsProperty('sponsorLogoUrl', sponsorLogoUrl))
      ..add(DiagnosticsProperty('sponsorDescription', sponsorDescription));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SponsorImpl &&
            (identical(other.sponsorName, sponsorName) ||
                other.sponsorName == sponsorName) &&
            (identical(other.sponsorLinkUrl, sponsorLinkUrl) ||
                other.sponsorLinkUrl == sponsorLinkUrl) &&
            (identical(other.sponsorLogoUrl, sponsorLogoUrl) ||
                other.sponsorLogoUrl == sponsorLogoUrl) &&
            (identical(other.sponsorDescription, sponsorDescription) ||
                other.sponsorDescription == sponsorDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sponsorName, sponsorLinkUrl,
      sponsorLogoUrl, sponsorDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SponsorImplCopyWith<_$SponsorImpl> get copyWith =>
      __$$SponsorImplCopyWithImpl<_$SponsorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SponsorImplToJson(
      this,
    );
  }
}

abstract class _Sponsor implements Sponsor {
  const factory _Sponsor(
      {required final String sponsorName,
      required final String sponsorLinkUrl,
      required final String sponsorLogoUrl,
      required final String sponsorDescription}) = _$SponsorImpl;

  factory _Sponsor.fromJson(Map<String, dynamic> json) = _$SponsorImpl.fromJson;

  @override
  String get sponsorName;
  @override
  String get sponsorLinkUrl;
  @override
  String get sponsorLogoUrl;
  @override
  String get sponsorDescription;
  @override
  @JsonKey(ignore: true)
  _$$SponsorImplCopyWith<_$SponsorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
