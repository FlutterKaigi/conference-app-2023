import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/model/sponsors/sponsor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

class SponsorItem extends ConsumerWidget {
  const SponsorItem({
    super.key,
    required this.sponsor,
  });

  final Sponsor sponsor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localization = ref.watch(localizationProvider);

    onTap() {
      showModalBottomSheet(
        context: context,
        clipBehavior: Clip.antiAlias,
        useRootNavigator: true,
        isScrollControlled: true,
        builder: (context) => DraggableScrollableSheet(
          initialChildSize: 0.75,
          minChildSize: 0.7,
          maxChildSize: 0.75,
          expand: false,
          builder: (context, scrollController) => Stack(
            fit: StackFit.expand,
            children: [
              ListView(
                controller: scrollController,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 32,
                ),
                children: [
                  Text(
                    sponsor.sponsorName,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Gap(16),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: SizedBox(
                      height: 200,
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: _WhiteBackgroundImage(
                          imageUrl: sponsor.sponsorLogoUrl,
                        ),
                      ),
                    ),
                  ),
                  const Gap(8),

                  /// wait [LinkedText] see [https://github.com/flutter/flutter/pull/125927]
                  Linkify(
                    onOpen: (link) async {
                      final uri = Uri.parse(link.url);
                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri);
                      }
                    },
                    text: sponsor.sponsorDescription,
                  ),
                  const Gap(32),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        minimumSize: const Size.fromHeight(40),
                      ),
                      onPressed: () async {
                        Navigator.of(context).pop();

                        final uri = Uri.parse(
                          sponsor.sponsorLinkUrl,
                        );
                        if (await canLaunchUrl(uri)) {
                          await launchUrl(uri);
                        }
                      },
                      child: Text(localization.sponsorLink),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Material(
      elevation: 1,
      color: Colors.transparent,
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      clipBehavior: Clip.antiAlias,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Stack(
          children: [
            Positioned.fill(
              child: _WhiteBackgroundImage(
                imageUrl: sponsor.sponsorLogoUrl,
              ),
            ),
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onTap,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _WhiteBackgroundImage extends StatelessWidget {
  const _WhiteBackgroundImage({
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Image.network(
          imageUrl,
          errorBuilder: (context, error, stackTrace) => const Center(
            child: Icon(Icons.error_outline),
          ),
        ),
      ),
    );
  }
}
