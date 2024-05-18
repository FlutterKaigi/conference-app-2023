// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Session _$SessionFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'talk':
      return SessionTalk.fromJson(json);
    case 'sponsor':
      return SessionSponsor.fromJson(json);
    case 'event':
      return SessionEvent.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Session', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$Session {
  String get id => throw _privateConstructorUsedError;
  LocaleText get title => throw _privateConstructorUsedError;
  @JpDateTimeConverter()
  DateTime get start => throw _privateConstructorUsedError;
  @JpDateTimeConverter()
  DateTime get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
  @useResult
  $Res call(
      {String id,
      LocaleText title,
      @JpDateTimeConverter() DateTime start,
      @JpDateTimeConverter() DateTime end});

  $LocaleTextCopyWith<$Res> get title;
}

/// @nodoc
class _$SessionCopyWithImpl<$Res, $Val extends Session>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as LocaleText,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocaleTextCopyWith<$Res> get title {
    return $LocaleTextCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SessionTalkImplCopyWith<$Res>
    implements $SessionCopyWith<$Res> {
  factory _$$SessionTalkImplCopyWith(
          _$SessionTalkImpl value, $Res Function(_$SessionTalkImpl) then) =
      __$$SessionTalkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String url,
      LocaleText title,
      LocaleText description,
      Speaker speaker,
      @JpDateTimeConverter() DateTime start,
      @JpDateTimeConverter() DateTime end});

  @override
  $LocaleTextCopyWith<$Res> get title;
  $LocaleTextCopyWith<$Res> get description;
  $SpeakerCopyWith<$Res> get speaker;
}

/// @nodoc
class __$$SessionTalkImplCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$SessionTalkImpl>
    implements _$$SessionTalkImplCopyWith<$Res> {
  __$$SessionTalkImplCopyWithImpl(
      _$SessionTalkImpl _value, $Res Function(_$SessionTalkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? title = null,
    Object? description = null,
    Object? speaker = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$SessionTalkImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as LocaleText,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as LocaleText,
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as Speaker,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LocaleTextCopyWith<$Res> get description {
    return $LocaleTextCopyWith<$Res>(_value.description, (value) {
      return _then(_value.copyWith(description: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeakerCopyWith<$Res> get speaker {
    return $SpeakerCopyWith<$Res>(_value.speaker, (value) {
      return _then(_value.copyWith(speaker: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionTalkImpl with DiagnosticableTreeMixin implements SessionTalk {
  const _$SessionTalkImpl(
      {required this.id,
      required this.url,
      required this.title,
      required this.description,
      required this.speaker,
      @JpDateTimeConverter() required this.start,
      @JpDateTimeConverter() required this.end,
      final String? $type})
      : $type = $type ?? 'talk';

  factory _$SessionTalkImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionTalkImplFromJson(json);

  @override
  final String id;
  @override
  final String url;
  @override
  final LocaleText title;
  @override
  final LocaleText description;
  @override
  final Speaker speaker;
  @override
  @JpDateTimeConverter()
  final DateTime start;
  @override
  @JpDateTimeConverter()
  final DateTime end;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Session.talk(id: $id, url: $url, title: $title, description: $description, speaker: $speaker, start: $start, end: $end)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Session.talk'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('speaker', speaker))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('end', end));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionTalkImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.speaker, speaker) || other.speaker == speaker) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, url, title, description, speaker, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionTalkImplCopyWith<_$SessionTalkImpl> get copyWith =>
      __$$SessionTalkImplCopyWithImpl<_$SessionTalkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionTalkImplToJson(
      this,
    );
  }
}

abstract class SessionTalk implements Session {
  const factory SessionTalk(
      {required final String id,
      required final String url,
      required final LocaleText title,
      required final LocaleText description,
      required final Speaker speaker,
      @JpDateTimeConverter() required final DateTime start,
      @JpDateTimeConverter() required final DateTime end}) = _$SessionTalkImpl;

  factory SessionTalk.fromJson(Map<String, dynamic> json) =
      _$SessionTalkImpl.fromJson;

  @override
  String get id;
  String get url;
  @override
  LocaleText get title;
  LocaleText get description;
  Speaker get speaker;
  @override
  @JpDateTimeConverter()
  DateTime get start;
  @override
  @JpDateTimeConverter()
  DateTime get end;
  @override
  @JsonKey(ignore: true)
  _$$SessionTalkImplCopyWith<_$SessionTalkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionSponsorImplCopyWith<$Res>
    implements $SessionCopyWith<$Res> {
  factory _$$SessionSponsorImplCopyWith(_$SessionSponsorImpl value,
          $Res Function(_$SessionSponsorImpl) then) =
      __$$SessionSponsorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String url,
      LocaleText title,
      LocaleText description,
      Speaker speaker,
      @JpDateTimeConverter() DateTime start,
      @JpDateTimeConverter() DateTime end});

  @override
  $LocaleTextCopyWith<$Res> get title;
  $LocaleTextCopyWith<$Res> get description;
  $SpeakerCopyWith<$Res> get speaker;
}

/// @nodoc
class __$$SessionSponsorImplCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$SessionSponsorImpl>
    implements _$$SessionSponsorImplCopyWith<$Res> {
  __$$SessionSponsorImplCopyWithImpl(
      _$SessionSponsorImpl _value, $Res Function(_$SessionSponsorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? title = null,
    Object? description = null,
    Object? speaker = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$SessionSponsorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as LocaleText,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as LocaleText,
      speaker: null == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as Speaker,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LocaleTextCopyWith<$Res> get description {
    return $LocaleTextCopyWith<$Res>(_value.description, (value) {
      return _then(_value.copyWith(description: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SpeakerCopyWith<$Res> get speaker {
    return $SpeakerCopyWith<$Res>(_value.speaker, (value) {
      return _then(_value.copyWith(speaker: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionSponsorImpl
    with DiagnosticableTreeMixin
    implements SessionSponsor {
  const _$SessionSponsorImpl(
      {required this.id,
      required this.url,
      required this.title,
      required this.description,
      required this.speaker,
      @JpDateTimeConverter() required this.start,
      @JpDateTimeConverter() required this.end,
      final String? $type})
      : $type = $type ?? 'sponsor';

  factory _$SessionSponsorImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionSponsorImplFromJson(json);

  @override
  final String id;
  @override
  final String url;
  @override
  final LocaleText title;
  @override
  final LocaleText description;
  @override
  final Speaker speaker;
  @override
  @JpDateTimeConverter()
  final DateTime start;
  @override
  @JpDateTimeConverter()
  final DateTime end;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Session.sponsor(id: $id, url: $url, title: $title, description: $description, speaker: $speaker, start: $start, end: $end)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Session.sponsor'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('speaker', speaker))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('end', end));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionSponsorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.speaker, speaker) || other.speaker == speaker) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, url, title, description, speaker, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionSponsorImplCopyWith<_$SessionSponsorImpl> get copyWith =>
      __$$SessionSponsorImplCopyWithImpl<_$SessionSponsorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionSponsorImplToJson(
      this,
    );
  }
}

abstract class SessionSponsor implements Session {
  const factory SessionSponsor(
          {required final String id,
          required final String url,
          required final LocaleText title,
          required final LocaleText description,
          required final Speaker speaker,
          @JpDateTimeConverter() required final DateTime start,
          @JpDateTimeConverter() required final DateTime end}) =
      _$SessionSponsorImpl;

  factory SessionSponsor.fromJson(Map<String, dynamic> json) =
      _$SessionSponsorImpl.fromJson;

  @override
  String get id;
  String get url;
  @override
  LocaleText get title;
  LocaleText get description;
  Speaker get speaker;
  @override
  @JpDateTimeConverter()
  DateTime get start;
  @override
  @JpDateTimeConverter()
  DateTime get end;
  @override
  @JsonKey(ignore: true)
  _$$SessionSponsorImplCopyWith<_$SessionSponsorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionEventImplCopyWith<$Res>
    implements $SessionCopyWith<$Res> {
  factory _$$SessionEventImplCopyWith(
          _$SessionEventImpl value, $Res Function(_$SessionEventImpl) then) =
      __$$SessionEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      LocaleText title,
      @JpDateTimeConverter() DateTime start,
      @JpDateTimeConverter() DateTime end});

  @override
  $LocaleTextCopyWith<$Res> get title;
}

/// @nodoc
class __$$SessionEventImplCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$SessionEventImpl>
    implements _$$SessionEventImplCopyWith<$Res> {
  __$$SessionEventImplCopyWithImpl(
      _$SessionEventImpl _value, $Res Function(_$SessionEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$SessionEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as LocaleText,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionEventImpl with DiagnosticableTreeMixin implements SessionEvent {
  const _$SessionEventImpl(
      {required this.id,
      required this.title,
      @JpDateTimeConverter() required this.start,
      @JpDateTimeConverter() required this.end,
      final String? $type})
      : $type = $type ?? 'event';

  factory _$SessionEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionEventImplFromJson(json);

  @override
  final String id;
  @override
  final LocaleText title;
  @override
  @JpDateTimeConverter()
  final DateTime start;
  @override
  @JpDateTimeConverter()
  final DateTime end;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Session.event(id: $id, title: $title, start: $start, end: $end)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Session.event'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('end', end));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionEventImplCopyWith<_$SessionEventImpl> get copyWith =>
      __$$SessionEventImplCopyWithImpl<_$SessionEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionEventImplToJson(
      this,
    );
  }
}

abstract class SessionEvent implements Session {
  const factory SessionEvent(
      {required final String id,
      required final LocaleText title,
      @JpDateTimeConverter() required final DateTime start,
      @JpDateTimeConverter() required final DateTime end}) = _$SessionEventImpl;

  factory SessionEvent.fromJson(Map<String, dynamic> json) =
      _$SessionEventImpl.fromJson;

  @override
  String get id;
  @override
  LocaleText get title;
  @override
  @JpDateTimeConverter()
  DateTime get start;
  @override
  @JpDateTimeConverter()
  DateTime get end;
  @override
  @JsonKey(ignore: true)
  _$$SessionEventImplCopyWith<_$SessionEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Speaker _$SpeakerFromJson(Map<String, dynamic> json) {
  return _Speaker.fromJson(json);
}

/// @nodoc
mixin _$Speaker {
  String get name => throw _privateConstructorUsedError;
  String get kana => throw _privateConstructorUsedError;
  String get twitter => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeakerCopyWith<Speaker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeakerCopyWith<$Res> {
  factory $SpeakerCopyWith(Speaker value, $Res Function(Speaker) then) =
      _$SpeakerCopyWithImpl<$Res, Speaker>;
  @useResult
  $Res call({String name, String kana, String twitter, String avatarUrl});
}

/// @nodoc
class _$SpeakerCopyWithImpl<$Res, $Val extends Speaker>
    implements $SpeakerCopyWith<$Res> {
  _$SpeakerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? kana = null,
    Object? twitter = null,
    Object? avatarUrl = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      kana: null == kana
          ? _value.kana
          : kana // ignore: cast_nullable_to_non_nullable
              as String,
      twitter: null == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpeakerImplCopyWith<$Res> implements $SpeakerCopyWith<$Res> {
  factory _$$SpeakerImplCopyWith(
          _$SpeakerImpl value, $Res Function(_$SpeakerImpl) then) =
      __$$SpeakerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String kana, String twitter, String avatarUrl});
}

/// @nodoc
class __$$SpeakerImplCopyWithImpl<$Res>
    extends _$SpeakerCopyWithImpl<$Res, _$SpeakerImpl>
    implements _$$SpeakerImplCopyWith<$Res> {
  __$$SpeakerImplCopyWithImpl(
      _$SpeakerImpl _value, $Res Function(_$SpeakerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? kana = null,
    Object? twitter = null,
    Object? avatarUrl = null,
  }) {
    return _then(_$SpeakerImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      kana: null == kana
          ? _value.kana
          : kana // ignore: cast_nullable_to_non_nullable
              as String,
      twitter: null == twitter
          ? _value.twitter
          : twitter // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeakerImpl with DiagnosticableTreeMixin implements _Speaker {
  const _$SpeakerImpl(
      {required this.name,
      required this.kana,
      this.twitter = '',
      required this.avatarUrl});

  factory _$SpeakerImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeakerImplFromJson(json);

  @override
  final String name;
  @override
  final String kana;
  @override
  @JsonKey()
  final String twitter;
  @override
  final String avatarUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Speaker(name: $name, kana: $kana, twitter: $twitter, avatarUrl: $avatarUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Speaker'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('kana', kana))
      ..add(DiagnosticsProperty('twitter', twitter))
      ..add(DiagnosticsProperty('avatarUrl', avatarUrl));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeakerImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.kana, kana) || other.kana == kana) &&
            (identical(other.twitter, twitter) || other.twitter == twitter) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, kana, twitter, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeakerImplCopyWith<_$SpeakerImpl> get copyWith =>
      __$$SpeakerImplCopyWithImpl<_$SpeakerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeakerImplToJson(
      this,
    );
  }
}

abstract class _Speaker implements Speaker {
  const factory _Speaker(
      {required final String name,
      required final String kana,
      final String twitter,
      required final String avatarUrl}) = _$SpeakerImpl;

  factory _Speaker.fromJson(Map<String, dynamic> json) = _$SpeakerImpl.fromJson;

  @override
  String get name;
  @override
  String get kana;
  @override
  String get twitter;
  @override
  String get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$SpeakerImplCopyWith<_$SpeakerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocaleText _$LocaleTextFromJson(Map<String, dynamic> json) {
  return _LocaleText.fromJson(json);
}

/// @nodoc
mixin _$LocaleText {
  String get ja => throw _privateConstructorUsedError;
  String get en => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocaleTextCopyWith<LocaleText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleTextCopyWith<$Res> {
  factory $LocaleTextCopyWith(
          LocaleText value, $Res Function(LocaleText) then) =
      _$LocaleTextCopyWithImpl<$Res, LocaleText>;
  @useResult
  $Res call({String ja, String en});
}

/// @nodoc
class _$LocaleTextCopyWithImpl<$Res, $Val extends LocaleText>
    implements $LocaleTextCopyWith<$Res> {
  _$LocaleTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ja = null,
    Object? en = null,
  }) {
    return _then(_value.copyWith(
      ja: null == ja
          ? _value.ja
          : ja // ignore: cast_nullable_to_non_nullable
              as String,
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocaleTextImplCopyWith<$Res>
    implements $LocaleTextCopyWith<$Res> {
  factory _$$LocaleTextImplCopyWith(
          _$LocaleTextImpl value, $Res Function(_$LocaleTextImpl) then) =
      __$$LocaleTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ja, String en});
}

/// @nodoc
class __$$LocaleTextImplCopyWithImpl<$Res>
    extends _$LocaleTextCopyWithImpl<$Res, _$LocaleTextImpl>
    implements _$$LocaleTextImplCopyWith<$Res> {
  __$$LocaleTextImplCopyWithImpl(
      _$LocaleTextImpl _value, $Res Function(_$LocaleTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ja = null,
    Object? en = null,
  }) {
    return _then(_$LocaleTextImpl(
      ja: null == ja
          ? _value.ja
          : ja // ignore: cast_nullable_to_non_nullable
              as String,
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocaleTextImpl with DiagnosticableTreeMixin implements _LocaleText {
  const _$LocaleTextImpl({required this.ja, required this.en});

  factory _$LocaleTextImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocaleTextImplFromJson(json);

  @override
  final String ja;
  @override
  final String en;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocaleText(ja: $ja, en: $en)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocaleText'))
      ..add(DiagnosticsProperty('ja', ja))
      ..add(DiagnosticsProperty('en', en));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocaleTextImpl &&
            (identical(other.ja, ja) || other.ja == ja) &&
            (identical(other.en, en) || other.en == en));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ja, en);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocaleTextImplCopyWith<_$LocaleTextImpl> get copyWith =>
      __$$LocaleTextImplCopyWithImpl<_$LocaleTextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocaleTextImplToJson(
      this,
    );
  }
}

abstract class _LocaleText implements LocaleText {
  const factory _LocaleText(
      {required final String ja, required final String en}) = _$LocaleTextImpl;

  factory _LocaleText.fromJson(Map<String, dynamic> json) =
      _$LocaleTextImpl.fromJson;

  @override
  String get ja;
  @override
  String get en;
  @override
  @JsonKey(ignore: true)
  _$$LocaleTextImplCopyWith<_$LocaleTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionData _$SessionDataFromJson(Map<String, dynamic> json) {
  return _SessionData.fromJson(json);
}

/// @nodoc
mixin _$SessionData {
  Map<Room, List<Session>> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionDataCopyWith<SessionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionDataCopyWith<$Res> {
  factory $SessionDataCopyWith(
          SessionData value, $Res Function(SessionData) then) =
      _$SessionDataCopyWithImpl<$Res, SessionData>;
  @useResult
  $Res call({Map<Room, List<Session>> items});
}

/// @nodoc
class _$SessionDataCopyWithImpl<$Res, $Val extends SessionData>
    implements $SessionDataCopyWith<$Res> {
  _$SessionDataCopyWithImpl(this._value, this._then);

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
              as Map<Room, List<Session>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionDataImplCopyWith<$Res>
    implements $SessionDataCopyWith<$Res> {
  factory _$$SessionDataImplCopyWith(
          _$SessionDataImpl value, $Res Function(_$SessionDataImpl) then) =
      __$$SessionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<Room, List<Session>> items});
}

/// @nodoc
class __$$SessionDataImplCopyWithImpl<$Res>
    extends _$SessionDataCopyWithImpl<$Res, _$SessionDataImpl>
    implements _$$SessionDataImplCopyWith<$Res> {
  __$$SessionDataImplCopyWithImpl(
      _$SessionDataImpl _value, $Res Function(_$SessionDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$SessionDataImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<Room, List<Session>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionDataImpl with DiagnosticableTreeMixin implements _SessionData {
  const _$SessionDataImpl({required final Map<Room, List<Session>> items})
      : _items = items;

  factory _$SessionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionDataImplFromJson(json);

  final Map<Room, List<Session>> _items;
  @override
  Map<Room, List<Session>> get items {
    if (_items is EqualUnmodifiableMapView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_items);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SessionData(items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SessionData'))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionDataImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionDataImplCopyWith<_$SessionDataImpl> get copyWith =>
      __$$SessionDataImplCopyWithImpl<_$SessionDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionDataImplToJson(
      this,
    );
  }
}

abstract class _SessionData implements SessionData {
  const factory _SessionData({required final Map<Room, List<Session>> items}) =
      _$SessionDataImpl;

  factory _SessionData.fromJson(Map<String, dynamic> json) =
      _$SessionDataImpl.fromJson;

  @override
  Map<Room, List<Session>> get items;
  @override
  @JsonKey(ignore: true)
  _$$SessionDataImplCopyWith<_$SessionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
