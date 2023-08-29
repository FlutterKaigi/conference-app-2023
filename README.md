# FlutterKaigi 2023 official application

Welcome FlutterKaigi 2023 official application repository!

## Development

See [Figma](https://www.figma.com/file/x71sECvdnsw8RTfKG0E4fB/FlutterKaigi-2023-App?type=design&node-id=11%3A1833&t=Dpxy1yUZMefElIjg-1) for the design of the FlutterKaigi 2023 official application.
We use GitHub Issues for task management. Please do not contact core members indivisually, but use Issues and Discussions.

### Set up

This project uses [Flutter beta channel](https://github.com/flutter/flutter/wiki/Roadmap#releases).
Therefore, please install Flutter beta channel. There is 2 way to use flutter beta channel.

1. Switch [flutter channel(https://docs.flutter.dev/release/upgrade#switching-flutter-channels).
2. Install Flutter beta channel with [fvm](https://fvm.app/).

#### Switch flutter channel

```bash
flutter channel beta
flutter upgrade
```

#### Install Flutter beta channel with fvm

1. [Install fvm](https://fvm.app/docs/getting_started/installation).
2. Move to project root directory, and run `fvm install` command.
3. Run `fvm flutter pub get` command.
4. Set up IDE to use fvm.
   a. If you use [VSCode](https://code.visualstudio.com/), already set up.
   b. If you use [Android Studio](https://developer.android.com/studio), please see [fvm document](https://fvm.app/docs/using).

### Contributing

We always welcome all contributions! See [CONTRIBUTING.md](./CONTRIBUTING.md) for more information.

For Japanese, please see [CONTRIBUTING.ja.md](./CONTRIBUTING.ja.md).

### Tech Stacks

- [Flutter](https://flutter.dev/)
- State management
  - [flutter_riverpod](https://pub.dev/packages/flutter_riverpod)
  - [riverpod_generator](https://pub.dev/packages/riverpod_generator)
- Data object
  - [freezed](https://pub.dev/packages/freezed)
  - [json_serializable](https://pub.dev/packages/json_serializable)
- Navigation
  - [go_router](https://pub.dev/packages/go_router)
- [M3 (Material Design 3)](https://m3.material.io/)

The application design is based on [riverpod pub example](https://github.com/rrousselGit/riverpod/tree/riverpod-v2.3.2/examples/pub).
Create [Provider](https://docs-v2.riverpod.dev/docs/providers/provider), [FutureProvider](https://docs-v2.riverpod.dev/docs/providers/future_provider), [Notifier and AsyncNotifier](https://docs-v2.riverpod.dev/docs/providers/notifier_provider) to create a lightweight model layer. 

### Project structure

Since this will be a small application, a layer-first project structure will be used.

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

### About specifying the library version

https://dart.dev/tools/pub/dependencies

As a policy, only major versions are set. Minor and patch version are specified as 0, unless a problem occurs.
As an example, the version specification for google_fonts is as follows.

```yaml
google_fonts: ^5.0.0
```

PRs that modify only the pubspec.lock file without code modification will not be merged. The core members will take care of this.

### Coding style

Introduce [flutter_lints](https://pub.dev/packages/flutter_lints) and adopt flutter's standard style.

https://docs.flutter.dev/release/breaking-changes/flutter-lints-package

The rules to be specially added are as follows.

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

Thank you for contributing!

### Contributors

[Contributors](https://github.com/FlutterKaigi/conference-app-2023/graphs/contributors)

### Core members

[conference-app-2023](https://github.com/orgs/FlutterKaigi/teams/conference-app-2023)
