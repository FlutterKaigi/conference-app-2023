import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/ui/router/router_app.dart';
import 'package:conference_2023/ui/widget/scroll_controller_notification.dart';
import 'package:conference_2023/util/extension/build_context_ext.dart';
import 'package:conference_2023/util/launch_in_external_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LicensesPage extends ConsumerWidget {
  const LicensesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ScrollControllerNotification(
        controller: PrimaryScrollController.of(context),
      ).dispatch(context);
    });

    return ListView(
      primary: true,
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: context.spacing,
          ),
          title: Text(localization.licensesAboutUs),
          onTap: () {
            const AboutUsRoute().go(context);
          },
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: context.spacing,
          ),
          title: Text(localization.licensesPrivacyPolicy),
          onTap: () async {
            final url = Uri.parse(localization.licensesPrivacyPolicyUrl);
            await launchInExternalApp(url);
          },
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: context.spacing,
          ),
          title: Text(localization.licensesCodeOfConduct),
          onTap: () async {
            final url = Uri.parse(localization.licensesCodeOfConductUrl);
            await launchInExternalApp(url);
          },
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: context.spacing,
          ),
          title: Text(localization.licensesContactUs),
          onTap: () async {
            final url = Uri.parse(localization.licensesContactUsUrl);
            await launchInExternalApp(url);
          },
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: context.spacing,
          ),
          title: Text(localization.licensesLegalNotices),
          onTap: () {
            const LegalNoticesRoute().go(context);
          },
        ),
      ],
    );
  }
}
