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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  DateTime get start => throw _privateConstructorUsedError;
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
  $Res call({String id, LocaleText title, DateTime start, DateTime end});

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
abstract class _$$SessionTalkCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$SessionTalkCopyWith(
          _$SessionTalk value, $Res Function(_$SessionTalk) then) =
      __$$SessionTalkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String url,
      LocaleText title,
      LocaleText description,
      Speaker speaker,
      DateTime start,
      DateTime end});

  @override
  $LocaleTextCopyWith<$Res> get title;
  $LocaleTextCopyWith<$Res> get description;
  $SpeakerCopyWith<$Res> get speaker;
}

/// @nodoc
class __$$SessionTalkCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$SessionTalk>
    implements _$$SessionTalkCopyWith<$Res> {
  __$$SessionTalkCopyWithImpl(
      _$SessionTalk _value, $Res Function(_$SessionTalk) _then)
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
    return _then(_$SessionTalk(
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
class _$SessionTalk with DiagnosticableTreeMixin implements SessionTalk {
  const _$SessionTalk(
      {required this.id,
      required this.url,
      required this.title,
      required this.description,
      required this.speaker,
      required this.start,
      required this.end,
      final String? $type})
      : $type = $type ?? 'talk';

  factory _$SessionTalk.fromJson(Map<String, dynamic> json) =>
      _$$SessionTalkFromJson(json);

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
  final DateTime start;
  @override
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionTalk &&
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
  _$$SessionTalkCopyWith<_$SessionTalk> get copyWith =>
      __$$SessionTalkCopyWithImpl<_$SessionTalk>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionTalkToJson(
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
      required final DateTime start,
      required final DateTime end}) = _$SessionTalk;

  factory SessionTalk.fromJson(Map<String, dynamic> json) =
      _$SessionTalk.fromJson;

  @override
  String get id;
  String get url;
  @override
  LocaleText get title;
  LocaleText get description;
  Speaker get speaker;
  @override
  DateTime get start;
  @override
  DateTime get end;
  @override
  @JsonKey(ignore: true)
  _$$SessionTalkCopyWith<_$SessionTalk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionSponsorCopyWith<$Res>
    implements $SessionCopyWith<$Res> {
  factory _$$SessionSponsorCopyWith(
          _$SessionSponsor value, $Res Function(_$SessionSponsor) then) =
      __$$SessionSponsorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String url,
      LocaleText title,
      LocaleText description,
      Speaker speaker,
      DateTime start,
      DateTime end});

  @override
  $LocaleTextCopyWith<$Res> get title;
  $LocaleTextCopyWith<$Res> get description;
  $SpeakerCopyWith<$Res> get speaker;
}

/// @nodoc
class __$$SessionSponsorCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$SessionSponsor>
    implements _$$SessionSponsorCopyWith<$Res> {
  __$$SessionSponsorCopyWithImpl(
      _$SessionSponsor _value, $Res Function(_$SessionSponsor) _then)
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
    return _then(_$SessionSponsor(
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
class _$SessionSponsor with DiagnosticableTreeMixin implements SessionSponsor {
  const _$SessionSponsor(
      {required this.id,
      required this.url,
      required this.title,
      required this.description,
      required this.speaker,
      required this.start,
      required this.end,
      final String? $type})
      : $type = $type ?? 'sponsor';

  factory _$SessionSponsor.fromJson(Map<String, dynamic> json) =>
      _$$SessionSponsorFromJson(json);

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
  final DateTime start;
  @override
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionSponsor &&
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
  _$$SessionSponsorCopyWith<_$SessionSponsor> get copyWith =>
      __$$SessionSponsorCopyWithImpl<_$SessionSponsor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionSponsorToJson(
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
      required final DateTime start,
      required final DateTime end}) = _$SessionSponsor;

  factory SessionSponsor.fromJson(Map<String, dynamic> json) =
      _$SessionSponsor.fromJson;

  @override
  String get id;
  String get url;
  @override
  LocaleText get title;
  LocaleText get description;
  Speaker get speaker;
  @override
  DateTime get start;
  @override
  DateTime get end;
  @override
  @JsonKey(ignore: true)
  _$$SessionSponsorCopyWith<_$SessionSponsor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionEventCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$SessionEventCopyWith(
          _$SessionEvent value, $Res Function(_$SessionEvent) then) =
      __$$SessionEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, LocaleText title, DateTime start, DateTime end});

  @override
  $LocaleTextCopyWith<$Res> get title;
}

/// @nodoc
class __$$SessionEventCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$SessionEvent>
    implements _$$SessionEventCopyWith<$Res> {
  __$$SessionEventCopyWithImpl(
      _$SessionEvent _value, $Res Function(_$SessionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$SessionEvent(
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
class _$SessionEvent with DiagnosticableTreeMixin implements SessionEvent {
  const _$SessionEvent(
      {required this.id,
      required this.title,
      required this.start,
      required this.end,
      final String? $type})
      : $type = $type ?? 'event';

  factory _$SessionEvent.fromJson(Map<String, dynamic> json) =>
      _$$SessionEventFromJson(json);

  @override
  final String id;
  @override
  final LocaleText title;
  @override
  final DateTime start;
  @override
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionEvent &&
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
  _$$SessionEventCopyWith<_$SessionEvent> get copyWith =>
      __$$SessionEventCopyWithImpl<_$SessionEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionEventToJson(
      this,
    );
  }
}

abstract class SessionEvent implements Session {
  const factory SessionEvent(
      {required final String id,
      required final LocaleText title,
      required final DateTime start,
      required final DateTime end}) = _$SessionEvent;

  factory SessionEvent.fromJson(Map<String, dynamic> json) =
      _$SessionEvent.fromJson;

  @override
  String get id;
  @override
  LocaleText get title;
  @override
  DateTime get start;
  @override
  DateTime get end;
  @override
  @JsonKey(ignore: true)
  _$$SessionEventCopyWith<_$SessionEvent> get copyWith =>
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
abstract class _$$_SpeakerCopyWith<$Res> implements $SpeakerCopyWith<$Res> {
  factory _$$_SpeakerCopyWith(
          _$_Speaker value, $Res Function(_$_Speaker) then) =
      __$$_SpeakerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String kana, String twitter, String avatarUrl});
}

/// @nodoc
class __$$_SpeakerCopyWithImpl<$Res>
    extends _$SpeakerCopyWithImpl<$Res, _$_Speaker>
    implements _$$_SpeakerCopyWith<$Res> {
  __$$_SpeakerCopyWithImpl(_$_Speaker _value, $Res Function(_$_Speaker) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? kana = null,
    Object? twitter = null,
    Object? avatarUrl = null,
  }) {
    return _then(_$_Speaker(
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
class _$_Speaker with DiagnosticableTreeMixin implements _Speaker {
  const _$_Speaker(
      {required this.name,
      required this.kana,
      this.twitter = '',
      required this.avatarUrl});

  factory _$_Speaker.fromJson(Map<String, dynamic> json) =>
      _$$_SpeakerFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Speaker &&
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
  _$$_SpeakerCopyWith<_$_Speaker> get copyWith =>
      __$$_SpeakerCopyWithImpl<_$_Speaker>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpeakerToJson(
      this,
    );
  }
}

abstract class _Speaker implements Speaker {
  const factory _Speaker(
      {required final String name,
      required final String kana,
      final String twitter,
      required final String avatarUrl}) = _$_Speaker;

  factory _Speaker.fromJson(Map<String, dynamic> json) = _$_Speaker.fromJson;

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
  _$$_SpeakerCopyWith<_$_Speaker> get copyWith =>
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
abstract class _$$_LocaleTextCopyWith<$Res>
    implements $LocaleTextCopyWith<$Res> {
  factory _$$_LocaleTextCopyWith(
          _$_LocaleText value, $Res Function(_$_LocaleText) then) =
      __$$_LocaleTextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ja, String en});
}

/// @nodoc
class __$$_LocaleTextCopyWithImpl<$Res>
    extends _$LocaleTextCopyWithImpl<$Res, _$_LocaleText>
    implements _$$_LocaleTextCopyWith<$Res> {
  __$$_LocaleTextCopyWithImpl(
      _$_LocaleText _value, $Res Function(_$_LocaleText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ja = null,
    Object? en = null,
  }) {
    return _then(_$_LocaleText(
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
class _$_LocaleText with DiagnosticableTreeMixin implements _LocaleText {
  const _$_LocaleText({required this.ja, required this.en});

  factory _$_LocaleText.fromJson(Map<String, dynamic> json) =>
      _$$_LocaleTextFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocaleText &&
            (identical(other.ja, ja) || other.ja == ja) &&
            (identical(other.en, en) || other.en == en));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ja, en);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocaleTextCopyWith<_$_LocaleText> get copyWith =>
      __$$_LocaleTextCopyWithImpl<_$_LocaleText>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocaleTextToJson(
      this,
    );
  }
}

abstract class _LocaleText implements LocaleText {
  const factory _LocaleText(
      {required final String ja, required final String en}) = _$_LocaleText;

  factory _LocaleText.fromJson(Map<String, dynamic> json) =
      _$_LocaleText.fromJson;

  @override
  String get ja;
  @override
  String get en;
  @override
  @JsonKey(ignore: true)
  _$$_LocaleTextCopyWith<_$_LocaleText> get copyWith =>
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
abstract class _$$_SessionDataCopyWith<$Res>
    implements $SessionDataCopyWith<$Res> {
  factory _$$_SessionDataCopyWith(
          _$_SessionData value, $Res Function(_$_SessionData) then) =
      __$$_SessionDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<Room, List<Session>> items});
}

/// @nodoc
class __$$_SessionDataCopyWithImpl<$Res>
    extends _$SessionDataCopyWithImpl<$Res, _$_SessionData>
    implements _$$_SessionDataCopyWith<$Res> {
  __$$_SessionDataCopyWithImpl(
      _$_SessionData _value, $Res Function(_$_SessionData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$_SessionData(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<Room, List<Session>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SessionData with DiagnosticableTreeMixin implements _SessionData {
  const _$_SessionData({required final Map<Room, List<Session>> items})
      : _items = items;

  factory _$_SessionData.fromJson(Map<String, dynamic> json) =>
      _$$_SessionDataFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SessionData &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SessionDataCopyWith<_$_SessionData> get copyWith =>
      __$$_SessionDataCopyWithImpl<_$_SessionData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionDataToJson(
      this,
    );
  }
}

abstract class _SessionData implements SessionData {
  const factory _SessionData({required final Map<Room, List<Session>> items}) =
      _$_SessionData;

  factory _SessionData.fromJson(Map<String, dynamic> json) =
      _$_SessionData.fromJson;

  @override
  Map<Room, List<Session>> get items;
  @override
  @JsonKey(ignore: true)
  _$$_SessionDataCopyWith<_$_SessionData> get copyWith =>
      throw _privateConstructorUsedError;
}
