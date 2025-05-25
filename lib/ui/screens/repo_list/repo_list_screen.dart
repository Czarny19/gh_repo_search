import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gh_repo_search/api/repositories/git_repo_repository.dart';
import 'package:gh_repo_search/domain/models/git_repo_model.dart';
import 'package:gh_repo_search/extensions/context_extensions.dart';
import 'package:gh_repo_search/mixins/formatters.dart';
import 'package:gh_repo_search/router/router.dart' show routeRepoDetails;
import 'package:gh_repo_search/ui/constants/dimens.dart';
import 'package:gh_repo_search/ui/constants/icons.dart';
import 'package:gh_repo_search/ui/screens/repo_list/bloc/repo_list_bloc.dart';
import 'package:gh_repo_search/ui/widgets/bar/primary_app_bar.dart';
import 'package:gh_repo_search/ui/widgets/img/network_img.dart';
import 'package:gh_repo_search/ui/widgets/info/info_card.dart';
import 'package:gh_repo_search/ui/widgets/info/info_chip.dart';
import 'package:gh_repo_search/ui/widgets/loading/app_loading.dart';
import 'package:go_router/go_router.dart';

part 'widget/repo_list_contents.dart';

part 'widget/repo_list_holder.dart';

part 'widget/repo_list_item.dart';

part 'widget/repo_list_search_bar.dart';

class RepoListScreen extends StatelessWidget {
  const RepoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RepoListBloc>(
      create: (context) => RepoListBloc(RepositoryProvider.of<GitRepoRepository>(context)),
      child: Scaffold(
        appBar: PrimaryAppBar(backIconButtonVisible: false),
        body: BlocBuilder<RepoListBloc, RepoListState>(
          buildWhen: (prev, curr) => prev.status == RepoListStatus.loading,
          builder: (context, state) {
            return RefreshIndicator(
              onRefresh: () async => context.read<RepoListBloc>().add(const RepoListEvent.refresh()),
              child: const _RepoListHolder(),
            );
          },
        ),
      ),
    );
  }
}
