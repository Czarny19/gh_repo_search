part of '../repo_details_screen.dart';

class _RepoDetailsInfoTab extends StatelessWidget {
  const _RepoDetailsInfoTab();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RepoDetailsCubit, RepoDetailsState>(
      buildWhen: (prev, curr) => prev.item != curr.item,
      builder: (context, state) {
        final repo = state.item!;

        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(paddingMd),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: paddingSm,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(paddingMd),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: paddingMd,
                      children: [
                        NetworkImg(url: repo.ownerAvatarUrl, size: 40.0),
                        Text(repo.owner, style: context.theme.textTheme.titleLarge),
                      ],
                    ),
                  ),
                ),
                const Divider(),

                Text(repo.description, style: context.theme.textTheme.bodyLarge),
                const Divider(),

                TextWithIcon(
                  text: context.tr.repoCreatedOn(DateTime.parse(repo.createdAt)),
                  icon: Icon(createdAtIcon, size: iconSizeSm, semanticLabel: context.tr.repoCreatedAt),
                ),
                TextWithIcon(
                  text: context.tr.repoUpdatedOn(DateTime.parse(repo.createdAt)),
                  icon: Icon(updatedAtIcon, size: iconSizeSm, semanticLabel: context.tr.repoUpdatedAt),
                ),
                const Divider(),

                TextWithIcon(
                  text: repo.language,
                  icon: Icon(langIcon, color: languageColor, semanticLabel: context.tr.repoStars),
                ),
                TextWithIcon(
                  text: context.tr.repoNStars(repo.stars),
                  icon: Icon(starIcon, color: starColor, semanticLabel: context.tr.repoStars),
                ),
                TextWithIcon(
                  text: context.tr.repoNIssues(repo.openIssues),
                  icon: Icon(issueIcon, color: issuesColor, semanticLabel: context.tr.repoIssues),
                ),
                TextWithIcon(
                  text: context.tr.repoNForks(repo.forks),
                  icon: Icon(forkIcon, color: forksColor, semanticLabel: context.tr.repoForks),
                ),
                TextWithIcon(
                  text: context.tr.repoNWatchers(repo.watchers),
                  icon: Icon(watchersIcon, color: watchersColos, semanticLabel: context.tr.repoWatchers),
                ),
                const Divider(),

                InkWell(
                  onTap: () => _launchUrl(repo.repoHtmlUrl),
                  child: TextWithIcon(
                    text: context.tr.repoOpenInBrowser,
                    icon: Icon(linkIcon, color: watchersColos, semanticLabel: context.tr.repoOpenInBrowser),
                  ),
                ),
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
