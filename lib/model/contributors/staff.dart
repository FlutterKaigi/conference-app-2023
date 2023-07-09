import 'package:freezed_annotation/freezed_annotation.dart';

part 'staff.freezed.dart';
part 'staff.g.dart';

@freezed
class Staff with _$Staff {
  const factory Staff({
    required String id,
    required String displayName,
    required StaffImage image,
    required List<Sns> sns,
  }) = _Staff;

  factory Staff.fromJson(Map<String, dynamic> json) => _$StaffFromJson(json);
}

@freezed
class StaffImage with _$StaffImage {
  const factory StaffImage({
    required String altText,
    required int height,
    required int width,
    required String src,
  }) = _StaffImage;

  factory StaffImage.fromJson(Map<String, dynamic> json) =>
      _$StaffImageFromJson(json);
}

@freezed
class Sns with _$Sns {
  const factory Sns({
    required SnsType type,
    required String value,
  }) = _Sns;

  factory Sns.fromJson(Map<String, dynamic> json) => _$SnsFromJson(json);
}

enum SnsType {
  twitter('https://twitter.com/'),
  github('https://github.com/'),
  discord('https://discordapp.com/users/'),
  qiita('https://qiita.com/'),
  zenn('https://zenn.dev/'),
  note('https://note.com/'),
  medium('https://medium.com/'),
  url(''),
  ;

  const SnsType(this.prefixUrl);
  final String prefixUrl;
}
