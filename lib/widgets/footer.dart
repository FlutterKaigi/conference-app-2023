import 'package:confapp2023/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';
import 'package:styled_text/styled_text.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.all(18),
      width: 500,
      color: white,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              appLocalizations.copyright,
              style: const TextStyle(color: black),
            ),
          ),
          const Gap(8),
          Align(
            alignment: Alignment.center,
            child: Text(
              appLocalizations.disclaimer,
              style: const TextStyle(
                color: grey,
              ),
            ),
          ),
          const Gap(4),
          Align(
            alignment: Alignment.center,
            child: StyledText(
              text: appLocalizations.trademark,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: grey,
              ),
              tags: {
                'FlutterLogo': StyledTextWidgetTag(
                  const FlutterLogo(),
                ),
              },
            ),
          ),
          const Gap(32),
        ],
      ),
    );
  }
}
