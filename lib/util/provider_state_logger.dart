import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProviderStateLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    log(
      '''
Provider State Updated
{
  provider: ${provider.name ?? provider.runtimeType},
  oldValue: $previousValue,
  newValue: $newValue
}
''',
      name: 'ProviderStateLogger',
    );
  }
}
