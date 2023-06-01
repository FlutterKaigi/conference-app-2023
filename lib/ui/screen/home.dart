import 'package:conference_2023/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16,
      ),
      child: Column(
        children: [
          const Gap(32),
          Assets.svg.flutterkaigiLogo.svg(
            width: 128,
            height: 128,
            colorFilter: const ColorFilter.mode(
              Colors.transparent,
              BlendMode.dst,
            ),
          ),
        ],
      ),
    );
  }
}
