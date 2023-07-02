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
  String get link => 'リンク';

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

  @override
  String get settingsThemeMode => '外観モード設定';

  @override
  String get settingsThemeModeSystem => 'システム';

  @override
  String get settingsThemeModeLight => 'ライトモード';

  @override
  String get settingsThemeModeDark => 'ダークモード';

  @override
  String get settingsLocalizationMode => '言語設定';

  @override
  String get settingsLocalizationModeSystem => 'システム';

  @override
  String get settingsLocalizationModeJa => '日本語';

  @override
  String get settingsLocalizationModeEn => 'English';

  @override
  String get settingsFontFamily => 'フォント設定';

  @override
  String get settingsResetPreferences => '設定のリセット';

  @override
  String get licensesLicenses => 'ライセンス';

  @override
  String get licensesAboutUs => '私たちについて';

  @override
  String get licensesPrivacyPolicy => 'プライバシーポリシー';

  @override
  String get licensesPrivacyPolicyUrl =>
      'http://flutterkaigi.jp/flutterkaigi/Privacy-Policy.ja.html';

  @override
  String get licensesCodeOfConduct => '行動規範';

  @override
  String get licensesCodeOfConductUrl =>
      'http://flutterkaigi.jp/flutterkaigi/Code-of-Conduct.ja.html';

  @override
  String get licensesContactUs => 'お問い合わせ';

  @override
  String get licensesContactUsUrl =>
      'https://docs.google.com/forms/d/e/1FAIpQLSemYPFEWpP8594MWI4k3Nz45RJzMS7pz1ufwtnX4t3V7z2TOw/viewform';

  @override
  String get licensesLegalNotices => '法的事項';
}
