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
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
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
  $Res call(
      {String id,
      String title,
      String description,
      DateTime start,
      DateTime end});
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
    Object? description = null,
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
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
      String title,
      String description,
      List<Speaker> speakers,
      DateTime start,
      DateTime end});
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
    Object? title = null,
    Object? description = null,
    Object? speakers = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$SessionTalk(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      speakers: null == speakers
          ? _value._speakers
          : speakers // ignore: cast_nullable_to_non_nullable
              as List<Speaker>,
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
class _$SessionTalk with DiagnosticableTreeMixin implements SessionTalk {
  const _$SessionTalk(
      {required this.id,
      required this.title,
      required this.description,
      required final List<Speaker> speakers,
      required this.start,
      required this.end,
      final String? $type})
      : _speakers = speakers,
        $type = $type ?? 'talk';

  factory _$SessionTalk.fromJson(Map<String, dynamic> json) =>
      _$$SessionTalkFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  final List<Speaker> _speakers;
  @override
  List<Speaker> get speakers {
    if (_speakers is EqualUnmodifiableListView) return _speakers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_speakers);
  }

  @override
  final DateTime start;
  @override
  final DateTime end;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Session.talk(id: $id, title: $title, description: $description, speakers: $speakers, start: $start, end: $end)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Session.talk'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('speakers', speakers))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('end', end));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionTalk &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._speakers, _speakers) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      const DeepCollectionEquality().hash(_speakers), start, end);

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
      required final String title,
      required final String description,
      required final List<Speaker> speakers,
      required final DateTime start,
      required final DateTime end}) = _$SessionTalk;

  factory SessionTalk.fromJson(Map<String, dynamic> json) =
      _$SessionTalk.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  List<Speaker> get speakers;
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
      String title,
      String description,
      List<Speaker> speakers,
      DateTime start,
      DateTime end});
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
    Object? title = null,
    Object? description = null,
    Object? speakers = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$SessionSponsor(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      speakers: null == speakers
          ? _value._speakers
          : speakers // ignore: cast_nullable_to_non_nullable
              as List<Speaker>,
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
class _$SessionSponsor with DiagnosticableTreeMixin implements SessionSponsor {
  const _$SessionSponsor(
      {required this.id,
      required this.title,
      required this.description,
      required final List<Speaker> speakers,
      required this.start,
      required this.end,
      final String? $type})
      : _speakers = speakers,
        $type = $type ?? 'sponsor';

  factory _$SessionSponsor.fromJson(Map<String, dynamic> json) =>
      _$$SessionSponsorFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  final List<Speaker> _speakers;
  @override
  List<Speaker> get speakers {
    if (_speakers is EqualUnmodifiableListView) return _speakers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_speakers);
  }

  @override
  final DateTime start;
  @override
  final DateTime end;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Session.sponsor(id: $id, title: $title, description: $description, speakers: $speakers, start: $start, end: $end)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Session.sponsor'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('speakers', speakers))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('end', end));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionSponsor &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._speakers, _speakers) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      const DeepCollectionEquality().hash(_speakers), start, end);

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
      required final String title,
      required final String description,
      required final List<Speaker> speakers,
      required final DateTime start,
      required final DateTime end}) = _$SessionSponsor;

  factory SessionSponsor.fromJson(Map<String, dynamic> json) =
      _$SessionSponsor.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  List<Speaker> get speakers;
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
  $Res call(
      {String id,
      String title,
      String description,
      DateTime start,
      DateTime end});
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
    Object? description = null,
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
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
      required this.description,
      required this.start,
      required this.end,
      final String? $type})
      : $type = $type ?? 'event';

  factory _$SessionEvent.fromJson(Map<String, dynamic> json) =>
      _$$SessionEventFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime start;
  @override
  final DateTime end;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Session.event(id: $id, title: $title, description: $description, start: $start, end: $end)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Session.event'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
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
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, start, end);

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
      required final String title,
      required final String description,
      required final DateTime start,
      required final DateTime end}) = _$SessionEvent;

  factory SessionEvent.fromJson(Map<String, dynamic> json) =
      _$SessionEvent.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
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
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String get profilePicture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeakerCopyWith<Speaker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeakerCopyWith<$Res> {
  factory $SpeakerCopyWith(Speaker value, $Res Function(Speaker) then) =
      _$SpeakerCopyWithImpl<$Res, Speaker>;
  @useResult
  $Res call({String id, String name, String bio, String profilePicture});
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
    Object? id = null,
    Object? name = null,
    Object? bio = null,
    Object? profilePicture = null,
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
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
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
  $Res call({String id, String name, String bio, String profilePicture});
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
    Object? id = null,
    Object? name = null,
    Object? bio = null,
    Object? profilePicture = null,
  }) {
    return _then(_$_Speaker(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Speaker with DiagnosticableTreeMixin implements _Speaker {
  const _$_Speaker(
      {required this.id,
      required this.name,
      required this.bio,
      required this.profilePicture});

  factory _$_Speaker.fromJson(Map<String, dynamic> json) =>
      _$$_SpeakerFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String bio;
  @override
  final String profilePicture;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Speaker(id: $id, name: $name, bio: $bio, profilePicture: $profilePicture)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Speaker'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('bio', bio))
      ..add(DiagnosticsProperty('profilePicture', profilePicture));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Speaker &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, bio, profilePicture);

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
      {required final String id,
      required final String name,
      required final String bio,
      required final String profilePicture}) = _$_Speaker;

  factory _Speaker.fromJson(Map<String, dynamic> json) = _$_Speaker.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get bio;
  @override
  String get profilePicture;
  @override
  @JsonKey(ignore: true)
  _$$_SpeakerCopyWith<_$_Speaker> get copyWith =>
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
