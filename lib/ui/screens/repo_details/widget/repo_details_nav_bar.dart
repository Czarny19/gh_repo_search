part of '../repo_details_screen.dart';

class _RepoDetailsNavBar extends StatelessWidget {
  const _RepoDetailsNavBar({required this.pageViewController});

  final PageController pageViewController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RepoDetailsCubit, RepoDetailsState>(
      buildWhen: (prev, curr) => prev.tab != curr.tab,
      builder: (context, state) {
        return NavigationBar(
          onDestinationSelected: (int index) => pageViewController.jumpToPage(index),
          selectedIndex: state.tab,
          destinations: [
            NavigationDestination(
              selectedIcon: const Icon(repoDetailsInfoSelectedIcon),
              icon: const Icon(repoDetailsInfoUnselectedIcon),
              label: context.tr.repoInfoTab,
            ),
            NavigationDestination(
              selectedIcon: const Icon(repoDetailsIssuesSelectedIcon),
              icon: const Icon(repoDetailsIssuesUnselectedIcon),
              label: context.tr.repoIssuesTab,
            ),
          ],
        );
      },
    );
  }
}
