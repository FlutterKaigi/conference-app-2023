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
          var path = await ref.read(storageUidIconPathProvider.future);
          if (path.isEmpty) {
            await ref.read(firebaseAuthProvider).signInAnonymously();
            path = await ref.read(storageUidIconPathProvider.future);
          }
          if (path.isEmpty) {
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
    final name = ref.watch(userNameProvider);
    final localization = ref.watch(localizationProvider);

    return _ProfileDisplay(
      text: name,
      style: Theme.of(context).textTheme.headlineMedium,
      tooltip: localization.editName,
      placeholder: localization.userName,
      onEditCompleted: ref.read(userNameProvider.notifier).update,
    );
  }
}

class _Website extends ConsumerWidget {
  const _Website();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final websiteUrl = ref.watch(websiteUrlProvider);
    final localization = ref.watch(localizationProvider);

    return _ProfileDisplay(
      text: websiteUrl,
      style: Theme.of(context).textTheme.bodyLarge,
      tooltip: localization.editUrl,
      placeholder: localization.selfIntroductionUrl,
      onEditCompleted: ref.read(websiteUrlProvider.notifier).update,
    );
  }
}

class _ProfileDisplay extends StatefulWidget {
  const _ProfileDisplay({
    required this.text,
    required this.style,
    required this.tooltip,
    required this.placeholder,
    required this.onEditCompleted,
  });

  final String text;
  final TextStyle? style;
  final String tooltip;
  final String placeholder;
  final void Function(String) onEditCompleted;

  @override
  State<_ProfileDisplay> createState() => __ProfileDisplayState();
}

class __ProfileDisplayState extends State<_ProfileDisplay> {
  bool _isEditing = false;

  @override
  Widget build(BuildContext context) {
    if (_isEditing || widget.text.isEmpty) {
      return _InputArea(
        placeholder: widget.placeholder,
        initialValue: widget.text,
        style: widget.style,
        initialFocus: _isEditing,
        onCompleted: (value) {
          setState(() {
            _isEditing = false;
          });
          widget.onEditCompleted(value);
        },
      );
    }

    return Tooltip(
      message: widget.tooltip,
      child: InkWell(
        onTap: () => setState(() {
          _isEditing = true;
        }),
        borderRadius: BorderRadius.circular(40),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: SizedBox(
            width: double.infinity,
            child: Text(
              widget.text,
              textAlign: TextAlign.center,
              style: widget.style,
            ),
          ),
        ),
      ),
    );
  }
}

class _InputArea extends StatefulWidget {
  const _InputArea({
    required this.placeholder,
    required this.initialValue,
    required this.onCompleted,
    required this.initialFocus,
    this.style,
  });

  final String placeholder;
  final String? initialValue;
  final void Function(String) onCompleted;
  final bool initialFocus;
  final TextStyle? style;

  @override
  State<_InputArea> createState() => __InputAreaState();
}

class __InputAreaState extends State<_InputArea> {
  final _controller = TextEditingController(
    text: widget.initialValue,
  );
  final _focusNode = FocusNode();

  @override
  void initState() {
    if (widget.initialFocus) {
      _focusNode.requestFocus();
    }
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      focusNode: _focusNode,
      style: widget.style,
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
