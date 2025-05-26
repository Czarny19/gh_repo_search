part of '../repo_details_screen.dart';

class _RepoDetailsTabs extends StatelessWidget {
  const _RepoDetailsTabs({required this.pageViewController});

  final PageController pageViewController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RepoDetailsCubit, RepoDetailsState>(
      buildWhen: (prev, curr) => prev.tab != curr.tab,
      builder: (context, state) {
        return PageView(
          controller: pageViewController,
          children: const [_RepoDetailsInfoTab(), _RepoDetailsIssuesTab()],
          onPageChanged: (int index) => context.read<RepoDetailsCubit>().switchTab(index),
        );
      },
    );
  }
}
