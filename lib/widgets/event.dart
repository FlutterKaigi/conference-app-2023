import 'package:confapp2023/data/link.dart';
import 'package:confapp2023/theme/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkModel {
  LinkModel(this.name, this.url);

  final String name;
  final String url;
}

class EventSection extends StatelessWidget {
  const EventSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pastItem = kPastKaigis.map((dynamic link) {
      return _FooterButton(
        message: link['url'],
        text: link['name'],
        anchorLink: link['url']!,
      );
    }).toList();

    return Align(
      alignment: Alignment.center,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: pastItem,
            ),
          ),
        ],
      ),
    );
  }
}

class _FooterButton extends StatelessWidget {
  const _FooterButton({
    Key? key,
    required this.message,
    this.text,
    this.icon,
    this.anchorLink,
    this.onPressed,
  }) : super(key: key);

  final String message;
  final String? text;
  final String? icon;
  final String? anchorLink;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      child: Row(
        children: [
          TextButton(
            child: Text(
              text!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: black,
              ),
            ),
            onPressed: () async {
              if (!await launchUrl(Uri.parse(anchorLink!))) {
                throw 'Could not launch $anchorLink';
              }
            },
          ),
        ],
      ),
    );
  }
}
