part of '../repo_list_screen.dart';

class _RepoListSearchBar extends StatefulWidget {
  const _RepoListSearchBar();

  @override
  State<_RepoListSearchBar> createState() => _RepoListSearchBarState();
}

class _RepoListSearchBarState extends State<_RepoListSearchBar> {
  late TextEditingController valueController;

  bool clearVisible = false;

  @override
  void initState() {
    super.initState();
    valueController = TextEditingController();
    valueController.addListener(
      () => setState(() {
        clearVisible = valueController.text.isNotEmpty;
      }),
    );
  }

  @override
  void dispose() {
    valueController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final contrastingColor = context.theme.colorScheme.onPrimaryContainer;

    return SliverAppBar(
      expandedHeight: 64.0,
      primary: false,
      leading: const SizedBox(),
      leadingWidth: 0,
      title: Container(
        padding: const EdgeInsets.only(bottom: paddingSm, top: paddingSm),
        width: context.mqSizeWidth,
        child: TextField(
          controller: valueController,
          onChanged: (query) => context.read<RepoListBloc>().add(RepoListEvent.search(query)),
          style: context.theme.textTheme.titleLarge!.copyWith(color: contrastingColor),
          decoration: InputDecoration(
            filled: true,
            hint: Text(context.tr.search),
            suffixIcon: clearVisible ? InkWell(onTap: _clear, child: Icon(Icons.clear)) : null,
            prefixIcon: Icon(searchIcon, semanticLabel: context.tr.search),
            border: OutlineInputBorder(borderSide: BorderSide(color: contrastingColor, width: 1.0)),
          ),
        ),
      ),
    );
  }

  void _clear() {
    valueController.clear();
    context.read<RepoListBloc>().add(RepoListEvent.clear());
  }
}
