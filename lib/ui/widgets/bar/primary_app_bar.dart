import 'package:flutter/material.dart';
import 'package:gh_repo_search/extensions/context_extensions.dart';
import 'package:gh_repo_search/ui/constants/icons.dart' show backButtonIcon;
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PrimaryAppBar({super.key, this.label, this.backIconButtonVisible = false, this.backIconButtonAction});

  final String? label;

  final bool backIconButtonVisible;

  final Function()? backIconButtonAction;

  @override
  Widget build(BuildContext context) {
    final backButton =
        backIconButtonVisible
            ? IconButton(onPressed: backIconButtonAction, icon: Icon(backButtonIcon, semanticLabel: context.tr.back))
            : null;

    return AppBar(
      title: Text(
        label ?? context.tr.appName,
        style: GoogleFonts.notoSans(),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      leading: backButton,
    );
  }

  @override
  Size get preferredSize => Size(0, 60);
}
