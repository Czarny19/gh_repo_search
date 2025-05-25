part of '../repo_details_screen.dart';

class _RepoDetailsIssuesTab extends StatelessWidget {
  const _RepoDetailsIssuesTab();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RepoDetailsCubit, RepoDetailsState>(
      buildWhen: (prev, curr) => prev.loadingIssues != curr.loadingIssues,
      builder: (context, state) {
        if (state.loadingIssues) {
          return AppLoading(label: context.tr.repoIssuesLoading);
        }

        return BlocBuilder<RepoDetailsCubit, RepoDetailsState>(
          buildWhen: (prev, curr) => prev.issues != curr.issues,
          builder: (context, state) {
            return ListView.separated(
              itemBuilder: (context, index) => _RepoDetailsIssuesItem(item: state.issues[index]),
              separatorBuilder: (context, index) => const Divider(height: paddingXs),
              itemCount: state.issues.length,
            );
          },
        );
      },
    );
  }
}
