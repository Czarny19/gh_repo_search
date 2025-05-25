part of '../repo_list_screen.dart';

class _RepoListItem extends StatelessWidget with Formatters {
  const _RepoListItem({super.key, required this.item});

  final GitRepoSMModel item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => context.pushNamed(routeRepoDetails, pathParameters: {'fullName': item.fullName.toString()}),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: paddingMd,
          children: [
            NetworkImg(url: item.ownerAvatarUrl, size: 40.0),

            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: paddingXs,
                children: [
                  Flexible(
                    child: Text(
                      item.fullName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.theme.textTheme.titleMedium!.copyWith(
                        color: context.theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),

                  Flexible(
                    child: Text(
                      item.description,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: context.theme.textTheme.bodyMedium!.copyWith(color: context.theme.colorScheme.onSurface),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: paddingMd),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: paddingSm,
            children: [
              if (item.language.isNotEmpty)
                InfoChip(
                  label: item.language,
                  icon: Icon(langIcon, size: iconSizeSm, semanticLabel: context.tr.repoLang),
                ),

              InfoChip(
                label: item.stars.toString(),
                icon: Icon(starIcon, size: iconSizeMd, semanticLabel: context.tr.repoStars),
              ),

              if (item.updatedAt.isNotEmpty)
                Expanded(child: Text(dateToShortDisplay(item.updatedAt), textAlign: TextAlign.end)),
            ],
          ),
        ),
      ),
    );
  }
}
