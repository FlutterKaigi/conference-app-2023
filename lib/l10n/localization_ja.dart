part of 'localization.dart';

final _ja = LocalizationJa();

final class LocalizationJa extends Localization {
  LocalizationJa() : super(languageCode: 'ja');

  @override
  String get flutterKaigiTitle => 'FlutterKaigi 2023';

  @override
  String get event => 'イベント';

  @override
  String get eventDate => '日時';

  @override
  String get eventPlace => '場所';

  @override
  String get eventPlaceDetail => 'オフライン&オンライン';

  @override
  String get link => 'Twitter';

  @override
  String get twitter => 'Twitter';

  @override
  String get github => 'GitHub';

  @override
  String get medium => 'Medium';

  @override
  String get pageTitleHome => 'ホーム';

  @override
  String get pageTitleSessions => 'セッション';

  @override
  String get pageTitleSponsors => 'スポンサー';

  @override
  String get pageTitleVenue => '会場';

  @override
  String get pageTitleContributors => 'コントリビューター';

  @override
  String get pageTitleSettings => '設定';

  @override
  String get pageTitleLicense => 'ライセンス';
}
