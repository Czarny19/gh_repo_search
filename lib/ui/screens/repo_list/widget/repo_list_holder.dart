part of '../repo_list_screen.dart';

class _RepoListHolder extends StatefulWidget {
  const _RepoListHolder();

  @override
  _RepoListHolderState createState() => _RepoListHolderState();
}

class _RepoListHolderState extends State<_RepoListHolder> {
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController(initialScrollOffset: 0.0);
    _scrollController?.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        const _RepoListSearchBar(),

        BlocBuilder<RepoListBloc, RepoListState>(
          buildWhen: (prev, curr) => prev.status != curr.status,
          builder: (context, state) {
            return switch (state.status) {
              RepoListStatus.start => SliverPadding(
                padding: const EdgeInsets.all(paddingMd),
                sliver: SliverToBoxAdapter(child: InfoCard(msg: context.tr.repoSearchHint)),
              ),

              RepoListStatus.loading => const SliverPadding(
                padding: EdgeInsets.all(paddingMd),
                sliver: SliverFillRemaining(child: AppLoading()),
              ),

              RepoListStatus.list => const _RepoListContents(),

              RepoListStatus.empty => SliverPadding(
                padding: const EdgeInsets.all(paddingMd),
                sliver: SliverToBoxAdapter(child: InfoCard(msg: context.tr.repoNoSearchResults, isError: true)),
              ),
            };
          },
        ),
      ],
    );
  }

  void _scrollListener() {
    final maxScroll = _scrollController!.position.maxScrollExtent;
    final isMaxScroll = _scrollController!.offset >= maxScroll - 120.0;

    final state = context.read<RepoListBloc>().state;
    final isLoadingNextPage = state.listInfo.isLoadingNextPage;
    final isEndOfList = state.listInfo.currPage == state.listInfo.totalPages;

    if (isMaxScroll && !isLoadingNextPage && !isEndOfList) {
      context.read<RepoListBloc>().add(const RepoListEvent.loadNextPage());
    }
  }
}
