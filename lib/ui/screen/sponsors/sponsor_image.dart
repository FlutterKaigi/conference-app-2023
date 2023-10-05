import 'package:conference_2023/model/sponsors/sponsor.dart';
import 'package:flutter/material.dart';

class SponsorImage extends StatelessWidget {
  const SponsorImage({
    super.key,
    required this.sponsor,
  });

  final Sponsor sponsor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      clipBehavior: Clip.antiAlias,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Stack(
          children: [
            Positioned.fill(
              child: ColoredBox(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.network(
                    sponsor.sponsorLogoUrl,
                    errorBuilder: (context, error, stackTrace) => const Center(
                      child: Icon(Icons.error_outline),
                    ),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    /// TODO: show sponsor detail
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
