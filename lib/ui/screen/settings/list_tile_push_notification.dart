import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/model/permission.dart';
import 'package:conference_2023/util/firebase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

class ListTilePushNotification extends ConsumerWidget {
  const ListTilePushNotification({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);
    final status = ref.watch(notificationPermissionProvider);

    return switch (status) {
      AsyncData(value: final type) => ListTile(
          title: Text(localization.settingsPushNotification),
          subtitle: Text(
            switch (type) {
              NotificationPermission.granted =>
                localization.settingsPushNotificationAuthorized,
              NotificationPermission.denied =>
                localization.settingsPushNotificationDenied,
              NotificationPermission.provisional =>
                localization.settingsPushNotificationProvisional,
              NotificationPermission.restricted =>
                localization.settingsPushNotificationRestricted,
              NotificationPermission.limited =>
                localization.settingsPushNotificationLimited,
              NotificationPermission.permanentlyDenied =>
                localization.settingsPushNotificationPermanentlyDenied,
            },
          ),
          onTap: () async {
            final String message;
            switch (type) {
              case NotificationPermission.granted:
                message = localization
                    .settingsPushNotificationMessageAlreadyAuthorized;
              case NotificationPermission.denied:
                final shouldShowRequestRationale =
                    await Permission.notification.shouldShowRequestRationale;
                if (shouldShowRequestRationale) {
                  if (!context.mounted) {
                    return;
                  }

                  await showOkAlertDialog(
                    context: context,
                    title: localization.settingsPushNotificationPrompt,
                  );
                }

                final newPermission = await Permission.notification.request();
                switch (newPermission) {
                  case NotificationPermission.granted:
                  case NotificationPermission.restricted:
                  case NotificationPermission.limited:
                  case NotificationPermission.provisional:
                    message =
                        localization.settingsPushNotificationMessageAuthorized;

                    await subscribeTopics(ref);
                  case NotificationPermission.denied:
                  case NotificationPermission.permanentlyDenied:
                    message =
                        localization.settingsPushNotificationMessageDenied;
                }

                /// invalidate the providers to rebuild the UI
                ref.invalidate(notificationPermissionProvider);
              case NotificationPermission.restricted:
              case NotificationPermission.limited:
              case NotificationPermission.permanentlyDenied:
              case NotificationPermission.provisional:
                message = localization.settingsPushNotificationMessageSettings;
            }

            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                ),
              );
            }
          },
        ),
      _ => const SizedBox(
          height: 56,
          child: Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        ),
    };
  }
}
