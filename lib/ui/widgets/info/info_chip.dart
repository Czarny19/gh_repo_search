import 'package:flutter/material.dart';
import 'package:gh_repo_search/extensions/context_extensions.dart';

class InfoChip extends StatelessWidget {
  const InfoChip({super.key, required this.label, required this.icon});

  final String label;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
        style: context.theme.textTheme.bodyMedium!.copyWith(color: context.theme.colorScheme.onSecondaryContainer),
      ),
      avatar: icon,
      color: WidgetStatePropertyAll(context.theme.colorScheme.secondaryContainer),
      side: BorderSide.none,
    );
  }
}
