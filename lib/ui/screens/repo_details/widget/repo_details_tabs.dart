part of '../repo_details_screen.dart';

class _RepoDetailsTabs extends StatefulWidget {
  const _RepoDetailsTabs();

  @override
  State<_RepoDetailsTabs> createState() => _RepoDetailsTabsState();
}

class _RepoDetailsTabsState extends State<_RepoDetailsTabs> {
  late PageController _pageViewController;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RepoDetailsCubit, RepoDetailsState>(
      listenWhen: (prev, curr) => prev.tab != curr.tab,
      listener: (context, state) => _pageViewController.jumpToPage(state.tab),
      buildWhen: (prev, curr) => prev.tab != curr.tab,
      builder: (context, state) {
        return PageView(
          controller: _pageViewController,
          children: const [_RepoDetailsInfoTab(), _RepoDetailsIssuesTab()],
          onPageChanged: (int index) => context.read<RepoDetailsCubit>().switchTab(index),
        );
      },
    );
  }
}
