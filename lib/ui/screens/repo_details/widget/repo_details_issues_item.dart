part of '../repo_details_screen.dart';

class _RepoDetailsIssuesItem extends StatelessWidget with Formatters {
  const _RepoDetailsIssuesItem({required this.item});

  final GitRepoIssueModel item;

  @override
  Widget build(BuildContext context) {
    final numberColor = context.theme.colorScheme.primary;

    return ListTile(
      dense: true,
      isThreeLine: true,
      onTap: () => _showIssueBody(context, item),
      leading: NetworkImg(url: item.userAvatarUrl, size: 32.0),
      title: Padding(padding: const EdgeInsets.only(bottom: paddingXs), child: Text(item.title)),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: paddingXxs,
        children: [
          Icon(numberIcon, size: iconSizeSm, color: numberColor, semanticLabel: context.tr.repoIssueNumber),
          Text(item.number.toString(), style: context.theme.textTheme.bodySmall!.copyWith(color: numberColor)),

          if (item.updatedAt.isNotEmpty)
            Expanded(child: Text(dateToShortDisplay(item.updatedAt), textAlign: TextAlign.end)),
        ],
      ),
    );
  }

  void _showIssueBody(BuildContext context, GitRepoIssueModel issue) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(paddingMd),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: paddingMd,
              children: [
                SizedBox(
                  width: context.mqSizeWidth,
                  child: ElevatedButton(
                    onPressed: () => _launchUrl(issue.issueHtmlUrl),
                    child: Text(context.tr.repoIssueOpenInBrowser),
                  ),
                ),
                Text(issue.body),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _launchUrl(String url) async {
    await launchUrl(Uri.parse(url));
  }
}
