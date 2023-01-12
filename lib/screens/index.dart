import 'package:confapp2023/gen/assets.gen.dart';
import 'package:confapp2023/theme/color.dart';
import 'package:confapp2023/widgets/drawer_menu.dart';
import 'package:confapp2023/widgets/event.dart';
import 'package:confapp2023/widgets/footer.dart';
import 'package:confapp2023/widgets/social.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class TopScreen extends StatelessWidget {
  const TopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterKaigi App'),
      ),
      drawer: const DrawerMenu(),
      body: Scaffold(
        body: Column(
          children: const <Widget>[
            Body(),
          ],
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
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                Assets.flutterkaigiLogo,
                width: 284,
              ),
              const Text(
                'FlutterKaigi',
                style: TextStyle(
                  fontSize: 40,
                  color: black,
                ),
              ),
              RichText(
                text: const TextSpan(
                  text: 'Official Application',
                  style: TextStyle(
                    fontSize: 24,
                    color: black,
                  ),
                ),
              ),
              const SocialSection(),
              const Gap(8),
              const EventSection(),
            ],
          ),
        ),
      ),
      const Footer(),
    ]);
  }
}
