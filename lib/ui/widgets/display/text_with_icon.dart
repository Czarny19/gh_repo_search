import 'package:flutter/material.dart';
import 'package:gh_repo_search/extensions/context_extensions.dart';
import 'package:gh_repo_search/ui/constants/dimens.dart';

class TextWithIcon extends StatelessWidget {
  const TextWithIcon({super.key, required this.text, required this.icon});

  final String text;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      spacing: paddingMd,
      children: [
        icon,
        Flexible(
          child: Text(text, maxLines: 2, overflow: TextOverflow.ellipsis, style: context.theme.textTheme.bodyLarge),
        ),
      ],
    );
  }
}
