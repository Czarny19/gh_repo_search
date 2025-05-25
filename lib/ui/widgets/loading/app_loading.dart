import 'package:flutter/material.dart';
import 'package:gh_repo_search/extensions/context_extensions.dart';
import 'package:gh_repo_search/ui/constants/dimens.dart' show paddingMd;

class AppLoading extends StatelessWidget {
  const AppLoading({super.key, this.label});

  final String? label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: paddingMd,
        children: [
          const CircularProgressIndicator(),
          Text(
            label ?? context.tr.loading,
            style: context.theme.textTheme.titleLarge!.copyWith(color: context.theme.colorScheme.primary),
          ),
        ],
      ),
    );
  }
}
