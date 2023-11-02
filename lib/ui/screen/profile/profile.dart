import 'package:cached_network_image/cached_network_image.dart';
import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/model/firebase_auth.dart';
import 'package:conference_2023/model/firebase_storage.dart';
import 'package:conference_2023/model/profile/profile_provider.dart';
import 'package:conference_2023/util/extension/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Gap(32),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 600,
            ),
            child: const FractionallySizedBox(
              widthFactor: 0.5,
              child: AspectRatio(
                aspectRatio: 1,
                child: _Icon(),
              ),
            ),
          ),
          const Gap(32),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.spacing,
            ),
            child: const _Name(),
          ),
          const Gap(32),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.spacing,
            ),
            child: const _Website(),
          ),
        ],
      ),
    );
  }
}

class _Icon extends ConsumerStatefulWidget {
  const _Icon();

  @override
  ConsumerState<_Icon> createState() => _IconState();
}

class _IconState extends ConsumerState<_Icon> {
  bool _isUploading = false;

  @override
  Widget build(BuildContext context) {
    final imageUrl = ref.watch(profileImageUrlProvider);
    final localization = ref.watch(localizationProvider);
    final image = switch (imageUrl) {
      AsyncData(value: final value) => value.isEmpty
          ? const Icon(Icons.upload)
          : _IconImage(
              url: value,
            ),
      AsyncError() => const Icon(Icons.error),
      _ => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
    };

    return Tooltip(
      message: localization.uploadImage,
      child: GestureDetector(
        onTap: () async {
          if (_isUploading) {
            return;
          }
          final messanger = ScaffoldMessenger.of(context);
          final file = await ImagePicker().pickImage(
            source: ImageSource.gallery,
          );
          if (file == null) {
            return;
          }
          var userIdOrNull = await ref.read(currentUserIdProvider.future);
          if (userIdOrNull == null) {
            final user =
                await ref.read(firebaseAuthProvider).signInAnonymously();
            userIdOrNull = user.user?.uid;
          }
          final userId = userIdOrNull;
          if (userId == null) {
            return;
          }
          setState(() {
            _isUploading = true;
          });

          messanger.showSnackBar(
            SnackBar(
              content: Text(localization.uploadingImage),
            ),
          );
          final data = await file.readAsBytes();
          final path = '/icons/$userId/icon.png';
          final imageRef = ref.read(imageReferenceProvider(path));
          await uploadImage(imageRef, data);
          setState(() {
            _isUploading = false;
          });

          messanger.showSnackBar(
            SnackBar(
              content: Text(localization.uploadedImage),
            ),
          );
          ref.invalidate(profileImageUrlProvider);
        },
        child: DecoratedBox(
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
              child: _isUploading
                  ? const Center(
                      child: CircularProgressIndicator.adaptive(),
                    )
                  : image,
            ),
          ),
        ),
      ),
    );
  }
}

class _IconImage extends StatelessWidget {
  const _IconImage({
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    final uri = Uri.parse(url);
    final cacheKey = uri.origin + uri.path;

    return CachedNetworkImage(
      imageUrl: url,
      cacheKey: cacheKey,
      fit: BoxFit.cover,
      placeholder: (context, _) => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
      errorWidget: (context, _, __) => const Icon(Icons.error),
    );
  }
}

class _Name extends ConsumerWidget {
  const _Name();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(
      profileNotifierProvider.select((value) => value.valueOrNull?.name),
    );
    final localization = ref.watch(localizationProvider);
    return _InputArea(
      placeholder: localization.userName,
      initialValue: name,
      onCompleted: (value) =>
          ref.read(profileNotifierProvider.notifier).updateName(value),
    );
  }
}

class _Website extends ConsumerWidget {
  const _Website();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final websiteUrl = ref.watch(
      profileNotifierProvider.select((value) => value.valueOrNull?.websiteUrl),
    );
    final localization = ref.watch(localizationProvider);
    return _InputArea(
      placeholder: localization.selfIntroductionUrl,
      initialValue: websiteUrl,
      onCompleted: (value) =>
          ref.read(profileNotifierProvider.notifier).updateWebsiteUrl(value),
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}

class _InputArea extends StatefulWidget {
  const _InputArea({
    required this.placeholder,
    required this.initialValue,
    required this.onCompleted,
    this.style,
  });

  final String placeholder;
  final String? initialValue;
  final void Function(String) onCompleted;
  final TextStyle? style;

  @override
  State<_InputArea> createState() => __InputAreaState();
}

class __InputAreaState extends State<_InputArea> {
  late TextEditingController _controller = TextEditingController(
    text: widget.initialValue,
  );

  @override
  void didUpdateWidget(covariant _InputArea oldWidget) {
    if (oldWidget.initialValue != widget.initialValue) {
      _controller = TextEditingController(
        text: widget.initialValue,
      );
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      style: widget.style ?? Theme.of(context).textTheme.headlineMedium,
      maxLines: 1,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        hintText: widget.placeholder,
      ),
      onEditingComplete: () {
        FocusScope.of(context).unfocus();
        widget.onCompleted(_controller.text);
      },
    );
  }
}
