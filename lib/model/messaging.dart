import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'messaging.g.dart';

@riverpod
FirebaseMessaging firebaseMessaging(
  FirebaseMessagingRef ref,
) =>
    FirebaseMessaging.instance;

Future<void> initFirebaseMessaging() async {
  final instance = FlutterLocalNotificationsPlugin();
  await instance.initialize(
    const InitializationSettings(
      android: AndroidInitializationSettings('@drawable/ic_notification'),
    ),
  );

  const androidDefaultChannel = AndroidNotificationChannel(
    'default_channel',
    'Default (Importance High)',
    importance: Importance.high,
  );

  await instance
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(androidDefaultChannel);

  FirebaseMessaging.onMessage.listen(
    (event) async {
      log('FirebaseMessaging.onMessage: ${event.toMap()}');

      await instance.show(
        event.messageId.hashCode,
        event.notification?.title,
        event.notification?.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            androidDefaultChannel.id,
            androidDefaultChannel.name,
          ),
        ),
      );
    },
  );

  /// read topics
  const topics = [
    'general',
  ];
  for (final topic in topics) {
    await FirebaseMessaging.instance.subscribeToTopic(topic);
  }
}
