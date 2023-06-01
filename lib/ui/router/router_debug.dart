import 'package:conference_2023/ui/router/navigator_key.dart';
import 'package:conference_2023/ui/screen/debug/debug.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'router_debug.g.dart';

@TypedGoRoute<DebugRoute>(
  path: '/debug',
)
class DebugRoute extends GoRouteData {
  const DebugRoute();

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DebugScreen();
  }
}
