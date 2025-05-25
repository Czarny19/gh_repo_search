import 'package:flutter/material.dart';
import 'package:gh_repo_search/extensions/context_extensions.dart';
import 'package:gh_repo_search/ui/constants/dimens.dart' show paddingMd;

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.msg, this.isError = false});

  final String msg;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isError ? context.theme.colorScheme.errorContainer : context.theme.colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(paddingMd),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: paddingMd,
          children: [
            Icon(Icons.info_outline, semanticLabel: context.tr.info),
            Flexible(
              child: Text(
                msg,
                style: context.theme.textTheme.bodyMedium!.copyWith(
                  color:
                      isError
                          ? context.theme.colorScheme.onErrorContainer
                          : context.theme.colorScheme.onPrimaryContainer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
