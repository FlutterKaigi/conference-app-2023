import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'permission.g.dart';

typedef NotificationPermission = PermissionStatus;

@riverpod
Future<PermissionStatus> notificationPermission(
  NotificationPermissionRef ref,
) async =>
    Permission.notification.status;
