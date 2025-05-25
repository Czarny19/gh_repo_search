import 'package:flutter/material.dart';
import 'package:gh_repo_search/l10n/gen/app_localizations.dart';

extension ContextExtensions on BuildContext {
  AppLocalizations get tr => AppLocalizations.of(this)!;

  ThemeData get theme => Theme.of(this);

  double get mqSizeWidth => MediaQuery.of(this).size.width;

  double get mqSizeHeight => MediaQuery.of(this).size.height;
}
