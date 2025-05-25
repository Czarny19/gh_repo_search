import 'package:flutter/material.dart';
import 'package:gh_repo_search/extensions/context_extensions.dart';
import 'package:gh_repo_search/ui/constants/dimens.dart';

class NetworkImg extends StatelessWidget {
  const NetworkImg({super.key, required this.url, required this.size});

  final String url;
  final double size;

  @override
  Widget build(BuildContext context) {
    if (url.isEmpty) {
      return CircleAvatar(radius: size, backgroundColor: context.theme.colorScheme.secondary);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: paddingXxs),
      child: Image.network(
        url,
        height: size,
        width: size,
        semanticLabel: context.tr.repoOwner,
        loadingBuilder: (context, child, progress) {
          if (progress == null) return child;
          return SizedBox(width: size, child: const CircularProgressIndicator());
        },
        errorBuilder: (context, _, _) {
          return CircleAvatar(radius: size, backgroundColor: context.theme.colorScheme.secondary);
        },
      ),
    );
  }
}
