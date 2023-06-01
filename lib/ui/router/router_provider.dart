import 'package:conference_2023/ui/router/navigator_key.dart';
import 'package:conference_2023/ui/router/router_app.dart';
import 'package:conference_2023/ui/router/router_debug.dart' as debug;
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@riverpod
// ignore: unsupported_provider_value
GoRouter router(RouterRef ref) => GoRouter(
      debugLogDiagnostics: kDebugMode,
      navigatorKey: rootNavigatorKey,
      routes: [
        ...$appRoutes,
        if (kDebugMode) ...debug.$appRoutes,
      ],
    );
