# FlutterKaigi 2023公式アプリケーション

FlutterKaigi 2023公式アプリケーションリポジトリにようこそ！

## 開発

FlutterKaigi 2023公式アプリケーションのUI定義は、[Figma](https://www.figma.com/file/x71sECvdnsw8RTfKG0E4fB/FlutterKaigi-2023-App?type=design&node-id=11%3A1833&t=Dpxy1yUZMefElIjg-1)にあります。
タスク管理にはGitHub Issueを利用しています。個別にコアメンバーに連絡せず、IssueやDiscussionを利用してください。

### セットアップ

このプロジェクトでは、[Flutter beta channel](https://github.com/flutter/flutter/wiki/Roadmap#releases)を利用しています。
このため、Flutter beta channelをインストールしてください。Flutter beta channelを利用する方法は2つあります。

1. [flutter channel](https://docs.flutter.dev/release/upgrade#switching-flutter-channels)を切り替える。
2. [fvm](https://fvm.app/)を利用してFlutter beta channelをインストールする。

#### flutter channelの切り替え

```bash
flutter channel beta
flutter upgrade
```

#### fvmを利用してFlutter beta channelをインストールする

1. [fvm](https://fvm.app/docs/getting_started/installation)をインストールする。
2. プロジェクトのルートディレクトリに移動し、`fvm install`コマンドを実行する。
3. `fvm flutter pub get`コマンドを実行する。
4. IDEをfvmを利用するように設定する。
   a. [VSCode](https://code.visualstudio.com/)を利用する場合は、すでに設定済みです。
   b. [Android Studio](https://developer.android.com/studio)を利用する場合は、[fvmのドキュメント](https://fvm.app/docs/using)を参照してください。

### コントリビュート

コントリビュートはいつでも歓迎しています！詳細は[CONTRIBUTING.ja.md](./CONTRIBUTING.ja.md)を参照してください。

### 技術スタック

- [Flutter](https://flutter.dev/)
- 状態管理
  - [flutter_riverpod](https://pub.dev/packages/flutter_riverpod)
  - [riverpod_generator](https://pub.dev/packages/riverpod_generator)
- データオブジェクト
  - [freezed](https://pub.dev/packages/freezed)
  - [json_serializable](https://pub.dev/packages/json_serializable)
- ナビゲーション
  - [go_router](https://pub.dev/packages/go_router)
- [M3 (Material Design 3)](https://m3.material.io/)

アプリケーションの設計は、[riverpod pub example](https://github.com/rrousselGit/riverpod/tree/riverpod-v2.3.2/examples/pub)を参考にしています。
[Provider](https://docs-v2.riverpod.dev/docs/providers/provider)、[FutureProvider](https://docs-v2.riverpod.dev/docs/providers/future_provider)、[Notifier and AsyncNotifier](https://docs-v2.riverpod.dev/docs/providers/notifier_provider)を作成して、軽量なモデル層を作成します。

### プロジェクト構造

小規模なアプリケーションとなるため、レイヤーファーストのプロジェクト構造を採用します。


```
- lib
  - gen
  - l10n
  - model
  - ui
    - router
    - screen
  - util
    - extension
    - web
```

### ライブラリバージョンの指定について

https://dart.dev/tools/pub/dependencies

ライブラリバーション指定の方針として、メジャーバージョンのみを指定することとします。マイナーバージョン、パッチバージョンは問題が発生した場合のみ指定します。
例として、google_fontsのバージョン指定は以下のようになります。

```yaml
google_fonts: ^5.0.0
```

コードの変更を伴わないpubspec.lockファイルのみを変更するPRはマージしません。ライブラリのみの更新は、コアメンバーが対応します。

### コードフォーマット

[flutter_lints](https://pub.dev/packages/flutter_lints)を導入し、flutterの標準スタイルを採用します。

https://docs.flutter.dev/release/breaking-changes/flutter-lints-package

追加するルールは以下の通りです。

* prefer_single_quotes
  * https://dart.dev/tools/linter-rules#prefer_single_quotes
* always_use_package_imports
  * https://dart.dev/tools/linter-rules#always_use_package_imports
* require_trailing_commas
  * https://dart.dev/tools/linter-rules#require_trailing_commas
* avoid_void_async
  * https://dart.dev/tools/linter-rules#avoid_void_async
* unawaited_futures
  * https://dart.dev/tools/linter-rules#unawaited_futures

## Thanks

コントリビュートしてくれたみなさん、ありがとうございます！

### Contributors

[Contributors](https://github.com/FlutterKaigi/conference-app-2023/graphs/contributors)

### Core members

[conference-app-2023](https://github.com/orgs/FlutterKaigi/teams/conference-app-2023)
