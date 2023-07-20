import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/ui/router/router_app.dart';
import 'package:conference_2023/util/extension/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class LicensesPage extends ConsumerWidget {
  const LicensesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);

    return ListView(
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
            if (!await canLaunchUrl(url)) {
              return;
            }

            await launchUrl(url);
          },
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: context.spacing,
          ),
          title: Text(localization.licensesCodeOfConduct),
          onTap: () async {
            final url = Uri.parse(localization.licensesCodeOfConductUrl);
            if (!await canLaunchUrl(url)) {
              return;
            }

            await launchUrl(url);
          },
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: context.spacing,
          ),
          title: Text(localization.licensesContactUs),
          onTap: () async {
            final url = Uri.parse(localization.licensesContactUsUrl);
            if (!await canLaunchUrl(url)) {
              return;
            }

            await launchUrl(url);
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