import 'package:confapp2023/templates/webview_template.dart';
import 'package:confapp2023/theme/color.dart';
import 'package:confapp2023/widgets/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(appLocalizations.about),
      ),
      drawer: const DrawerMenu(),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFFF8FBFF),
          Color(0xFFFCFDFD),
        ])),
        child: Scaffold(
          body: Column(
            children: const <Widget>[
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BodyChild();
  }
}

class BodyChild extends StatelessWidget {
  const BodyChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;
    final policyLinks = <Map<String, Object>>[
      {
        'name': appLocalizations.codeOfConduct,
        'url': 'https://flutterkaigi.jp/flutterkaigi/Code-of-Conduct.ja.html',
        'icon': const Icon(Icons.note_add),
      },
      {
        'name': appLocalizations.privacyPolicy,
        'url': 'https://flutterkaigi.jp/flutterkaigi/Privacy-Policy.ja.html',
        'icon': const Icon(Icons.security),
      },
      {
        'name': appLocalizations.contactUs,
        'url':
            'https://docs.google.com/forms/d/e/1FAIpQLSemYPFEWpP8594MWI4k3Nz45RJzMS7pz1ufwtnX4t3V7z2TOw/viewform',
        'icon': const Icon(Icons.phonelink_rounded),
      },
    ];

    Widget _menuItem(Map<String, dynamic> link) {
      return GestureDetector(
        child: Container(
          padding: const EdgeInsets.all(2),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 0.5, color: grey),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: ListTile(
                  leading: link['icon'],
                  title: Text(
                    link['name']!,
                    style: const TextStyle(
                      color: black,
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        onTap: () async {
          await Navigator.push(
            context,
            MaterialPageRoute<dynamic>(
              builder: (BuildContext context) =>
                  WebviewTemplate(url: link['url'], title: link['name']!),
            ),
          );
        },
      );
    }

    List<Widget> policyItem() {
      return policyLinks.map((link) {
        return ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            _menuItem(link),
          ],
        );
      }).toList();
    }

    return Column(children: [
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[...policyItem()]),
        ),
      ),
    ]);
  }
}
