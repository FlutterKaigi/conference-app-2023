import 'package:confapp2023/data/staff.dart';
import 'package:confapp2023/gen/assets.gen.dart';
import 'package:confapp2023/widgets/drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

class StaffScreen extends StatelessWidget {
  const StaffScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;
    kStaffList.sort((a, b) => (a['name'] ?? '').compareTo(b['name'] ?? ''));

    return Scaffold(
      appBar: AppBar(
        title: Text(appLocalizations.staff),
      ),
      drawer: const DrawerMenu(),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Tooltip(
                  message: appLocalizations.alphabeticalOrder,
                  child: Text(
                    appLocalizations.alphabeticalOrder,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.extent(
                primary: false,
                padding: const EdgeInsets.all(24),
                crossAxisSpacing: 48,
                mainAxisSpacing: 48,
                maxCrossAxisExtent: 100,
                children: kStaffList
                    .map(
                      (e) => StaffItem(
                        name: e['name'] ?? '',
                        photo: e['photo'] ?? '',
                        url: e['url'] ?? '',
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StaffItem extends StatelessWidget {
  const StaffItem({
    Key? key,
    required this.name,
    required this.photo,
    required this.url,
  }) : super(key: key);
  final String name;
  final String photo;
  final String url;

  @override
  Widget build(BuildContext context) {
    // final image = (photo.isNotEmpty
    //     ? AssetImage(photo)
    //     : const Svg(Assets.flutterkaigiLog)) as ImageProvider;

    final image = (photo.isNotEmpty && validUrl(photo)
        ? NetworkImage(photo)
        : const Svg(Assets.flutterkaigiLogo)) as ImageProvider;

    return InkWell(
      onTap: () async {
        if (!await launchUrl(Uri.parse(url))) {
          throw 'Could not launch $url';
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 64,
            width: 64,
            child: ClipOval(
              child: FadeInImage(
                fit: BoxFit.cover,
                image: image,
                placeholder: MemoryImage(kTransparentImage),
              ),
            ),
          ),
          FittedBox(fit: BoxFit.scaleDown, child: Text(name)),
        ],
      ),
    );
  }

  bool validUrl(String url) {
    try {
      Uri.parse(url);
    } on FormatException catch (_) {
      return false;
    }
    return true;
  }
}
