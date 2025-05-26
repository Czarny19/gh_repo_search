part of '../repo_list_screen.dart';

class _RepoListContents extends StatelessWidget {
  const _RepoListContents();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RepoListBloc, RepoListState>(
      buildWhen: (prev, curr) => prev.listInfo != curr.listInfo,
      builder: (context, state) {
        if (state.listInfo.isError) {
          return SliverPadding(
            padding: const EdgeInsets.all(paddingMd),
            sliver: SliverToBoxAdapter(child: InfoCard(msg: context.tr.repoSearchError, isError: true)),
          );
        }

        final items = state.items;
        final isLastPage = state.listInfo.currPage == state.listInfo.totalPages;

        return SliverMainAxisGroup(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(paddingMd),
              sliver: SliverList.separated(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return _RepoListItem(key: ValueKey(items[index].id), item: items[index]);
                },
                separatorBuilder: (context, index) => const SizedBox(height: paddingMd),
              ),
            ),

            if (!isLastPage)
              SliverPadding(
                padding: const EdgeInsets.all(paddingMd),
                sliver: SliverToBoxAdapter(child: AppLoading(label: context.tr.loadingMore)),
              ),
          ],
        );
      },
    );
  }
}
