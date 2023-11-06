import 'package:conference_2023/model/firebase_auth.dart';
import 'package:conference_2023/model/firebase_storage.dart';
import 'package:conference_2023/model/profile/profile.dart';
import 'package:conference_2023/model/profile/profile_provider.dart';
import 'package:conference_2023/ui/widget/icon_image.dart';
import 'package:conference_2023/util/extension/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

void showReadProfileSheet(
  BuildContext context, {
  required Profile profile,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    useRootNavigator: true,
    enableDrag: true,
    builder: (context) => DraggableScrollableSheet(
      initialChildSize: 0.75,
      minChildSize: 0.6,
      maxChildSize: 0.75,
      expand: false,
      builder: (context, scrollController) => SingleChildScrollView(
        controller: scrollController,
        child: _ReadProfile(
          profile: profile,
        ),
      ),
    ),
  );
}

class _ReadProfile extends ConsumerWidget {
  const _ReadProfile({
    required this.profile,
  });

  final Profile profile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Gap(32),
        Center(
          child: Stack(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 600,
                ),
                child: FractionallySizedBox(
                  widthFactor: 0.5,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: _Icon(
                      id: profile.id,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Gap(32),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.spacing,
          ),
          child: _Name(
            name: profile.name,
          ),
        ),
        const Gap(32),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.spacing,
          ),
          child: _WebsiteUrl(
            url: profile.websiteUrl,
          ),
        ),
      ],
    );
  }
}

class _Icon extends ConsumerWidget {
  const _Icon({
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSignedIn = ref.watch(currentUserIdProvider).hasValue;
    final url = ref.watch(storageUidIconPathProvider(id)).valueOrNull;
    final Widget? image;
    if (url == null || !isSignedIn) {
      image = null;
    } else {
      final imageUrl = ref.watch(imageDownloadUrlProvider(url));
      image = switch (imageUrl) {
        AsyncData(value: final value) => value.isEmpty
            ? null
            : IconImage(
                url: value,
              ),
        AsyncError() => const Icon(Icons.error),
        _ => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
      };
    }

    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.outlineVariant,
          width: 2,
        ),
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: ClipOval(
          child: image,
        ),
      ),
    );
  }
}

class _Name extends ConsumerWidget {
  const _Name({
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      name,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}

class _WebsiteUrl extends ConsumerWidget {
  const _WebsiteUrl({
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      url,
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}
