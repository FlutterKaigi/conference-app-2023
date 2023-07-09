// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Staff _$StaffFromJson(Map<String, dynamic> json) {
  return _Staff.fromJson(json);
}

/// @nodoc
mixin _$Staff {
  String get id => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  StaffImage get image => throw _privateConstructorUsedError;
  List<Sns> get sns => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StaffCopyWith<Staff> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffCopyWith<$Res> {
  factory $StaffCopyWith(Staff value, $Res Function(Staff) then) =
      _$StaffCopyWithImpl<$Res, Staff>;
  @useResult
  $Res call({String id, String displayName, StaffImage image, List<Sns> sns});

  $StaffImageCopyWith<$Res> get image;
}

/// @nodoc
class _$StaffCopyWithImpl<$Res, $Val extends Staff>
    implements $StaffCopyWith<$Res> {
  _$StaffCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? image = null,
    Object? sns = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as StaffImage,
      sns: null == sns
          ? _value.sns
          : sns // ignore: cast_nullable_to_non_nullable
              as List<Sns>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StaffImageCopyWith<$Res> get image {
    return $StaffImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StaffCopyWith<$Res> implements $StaffCopyWith<$Res> {
  factory _$$_StaffCopyWith(_$_Staff value, $Res Function(_$_Staff) then) =
      __$$_StaffCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String displayName, StaffImage image, List<Sns> sns});

  @override
  $StaffImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$_StaffCopyWithImpl<$Res> extends _$StaffCopyWithImpl<$Res, _$_Staff>
    implements _$$_StaffCopyWith<$Res> {
  __$$_StaffCopyWithImpl(_$_Staff _value, $Res Function(_$_Staff) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? image = null,
    Object? sns = null,
  }) {
    return _then(_$_Staff(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as StaffImage,
      sns: null == sns
          ? _value._sns
          : sns // ignore: cast_nullable_to_non_nullable
              as List<Sns>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Staff implements _Staff {
  const _$_Staff(
      {required this.id,
      required this.displayName,
      required this.image,
      required final List<Sns> sns})
      : _sns = sns;

  factory _$_Staff.fromJson(Map<String, dynamic> json) =>
      _$$_StaffFromJson(json);

  @override
  final String id;
  @override
  final String displayName;
  @override
  final StaffImage image;
  final List<Sns> _sns;
  @override
  List<Sns> get sns {
    if (_sns is EqualUnmodifiableListView) return _sns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sns);
  }

  @override
  String toString() {
    return 'Staff(id: $id, displayName: $displayName, image: $image, sns: $sns)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Staff &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._sns, _sns));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, displayName, image,
      const DeepCollectionEquality().hash(_sns));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StaffCopyWith<_$_Staff> get copyWith =>
      __$$_StaffCopyWithImpl<_$_Staff>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StaffToJson(
      this,
    );
  }
}

abstract class _Staff implements Staff {
  const factory _Staff(
      {required final String id,
      required final String displayName,
      required final StaffImage image,
      required final List<Sns> sns}) = _$_Staff;

  factory _Staff.fromJson(Map<String, dynamic> json) = _$_Staff.fromJson;

  @override
  String get id;
  @override
  String get displayName;
  @override
  StaffImage get image;
  @override
  List<Sns> get sns;
  @override
  @JsonKey(ignore: true)
  _$$_StaffCopyWith<_$_Staff> get copyWith =>
      throw _privateConstructorUsedError;
}

StaffImage _$StaffImageFromJson(Map<String, dynamic> json) {
  return _StaffImage.fromJson(json);
}

/// @nodoc
mixin _$StaffImage {
  String get altText => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  String get src => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StaffImageCopyWith<StaffImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffImageCopyWith<$Res> {
  factory $StaffImageCopyWith(
          StaffImage value, $Res Function(StaffImage) then) =
      _$StaffImageCopyWithImpl<$Res, StaffImage>;
  @useResult
  $Res call({String altText, int height, int width, String src});
}

/// @nodoc
class _$StaffImageCopyWithImpl<$Res, $Val extends StaffImage>
    implements $StaffImageCopyWith<$Res> {
  _$StaffImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? altText = null,
    Object? height = null,
    Object? width = null,
    Object? src = null,
  }) {
    return _then(_value.copyWith(
      altText: null == altText
          ? _value.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StaffImageCopyWith<$Res>
    implements $StaffImageCopyWith<$Res> {
  factory _$$_StaffImageCopyWith(
          _$_StaffImage value, $Res Function(_$_StaffImage) then) =
      __$$_StaffImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String altText, int height, int width, String src});
}

/// @nodoc
class __$$_StaffImageCopyWithImpl<$Res>
    extends _$StaffImageCopyWithImpl<$Res, _$_StaffImage>
    implements _$$_StaffImageCopyWith<$Res> {
  __$$_StaffImageCopyWithImpl(
      _$_StaffImage _value, $Res Function(_$_StaffImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? altText = null,
    Object? height = null,
    Object? width = null,
    Object? src = null,
  }) {
    return _then(_$_StaffImage(
      altText: null == altText
          ? _value.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StaffImage implements _StaffImage {
  const _$_StaffImage(
      {required this.altText,
      required this.height,
      required this.width,
      required this.src});

  factory _$_StaffImage.fromJson(Map<String, dynamic> json) =>
      _$$_StaffImageFromJson(json);

  @override
  final String altText;
  @override
  final int height;
  @override
  final int width;
  @override
  final String src;

  @override
  String toString() {
    return 'StaffImage(altText: $altText, height: $height, width: $width, src: $src)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StaffImage &&
            (identical(other.altText, altText) || other.altText == altText) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.src, src) || other.src == src));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, altText, height, width, src);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StaffImageCopyWith<_$_StaffImage> get copyWith =>
      __$$_StaffImageCopyWithImpl<_$_StaffImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StaffImageToJson(
      this,
    );
  }
}

abstract class _StaffImage implements StaffImage {
  const factory _StaffImage(
      {required final String altText,
      required final int height,
      required final int width,
      required final String src}) = _$_StaffImage;

  factory _StaffImage.fromJson(Map<String, dynamic> json) =
      _$_StaffImage.fromJson;

  @override
  String get altText;
  @override
  int get height;
  @override
  int get width;
  @override
  String get src;
  @override
  @JsonKey(ignore: true)
  _$$_StaffImageCopyWith<_$_StaffImage> get copyWith =>
      throw _privateConstructorUsedError;
}

Sns _$SnsFromJson(Map<String, dynamic> json) {
  return _Sns.fromJson(json);
}

/// @nodoc
mixin _$Sns {
  SnsType get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnsCopyWith<Sns> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnsCopyWith<$Res> {
  factory $SnsCopyWith(Sns value, $Res Function(Sns) then) =
      _$SnsCopyWithImpl<$Res, Sns>;
  @useResult
  $Res call({SnsType type, String value});
}

/// @nodoc
class _$SnsCopyWithImpl<$Res, $Val extends Sns> implements $SnsCopyWith<$Res> {
  _$SnsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SnsType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SnsCopyWith<$Res> implements $SnsCopyWith<$Res> {
  factory _$$_SnsCopyWith(_$_Sns value, $Res Function(_$_Sns) then) =
      __$$_SnsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SnsType type, String value});
}

/// @nodoc
class __$$_SnsCopyWithImpl<$Res> extends _$SnsCopyWithImpl<$Res, _$_Sns>
    implements _$$_SnsCopyWith<$Res> {
  __$$_SnsCopyWithImpl(_$_Sns _value, $Res Function(_$_Sns) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_$_Sns(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SnsType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sns implements _Sns {
  const _$_Sns({required this.type, required this.value});

  factory _$_Sns.fromJson(Map<String, dynamic> json) => _$$_SnsFromJson(json);

  @override
  final SnsType type;
  @override
  final String value;

  @override
  String toString() {
    return 'Sns(type: $type, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sns &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SnsCopyWith<_$_Sns> get copyWith =>
      __$$_SnsCopyWithImpl<_$_Sns>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SnsToJson(
      this,
    );
  }
}

abstract class _Sns implements Sns {
  const factory _Sns(
      {required final SnsType type, required final String value}) = _$_Sns;

  factory _Sns.fromJson(Map<String, dynamic> json) = _$_Sns.fromJson;

  @override
  SnsType get type;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_SnsCopyWith<_$_Sns> get copyWith => throw _privateConstructorUsedError;
}
