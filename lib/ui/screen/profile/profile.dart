import 'package:conference_2023/l10n/localization.dart';
import 'package:conference_2023/model/profile/profile_provider.dart';
import 'package:conference_2023/util/extension/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Gap(32),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
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

class _Icon extends ConsumerWidget {
  const _Icon();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageUrl = ref.watch(profileImageUrlProvider);
    final image = switch (imageUrl) {
      AsyncData<String>() => Image.network(imageUrl.value),
      AsyncError<String>() => const Icon(Icons.error),
      _ => const CircularProgressIndicator.adaptive(),
    };

    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.outlineVariant,
          width: 2,
        ),
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: Center(
          child: image,
        ),
      ),
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
  late final _focusNode = FocusNode()
    ..addListener(
      () => setState(() {}),
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
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      focusNode: _focusNode,
      style: widget.style ?? Theme.of(context).textTheme.headlineMedium,
      maxLines: 1,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        hintText: widget.placeholder,
      ),
      onEditingComplete: () {
        FocusScope.of(context).unfocus();
        widget.onCompleted(_controller.text);
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
