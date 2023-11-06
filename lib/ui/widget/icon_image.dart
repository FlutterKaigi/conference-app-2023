import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class IconImage extends StatelessWidget {
  const IconImage({
    super.key,
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
