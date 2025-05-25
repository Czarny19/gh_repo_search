import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gh_repo_search/api/repositories/git_repo_repository.dart';
import 'package:gh_repo_search/domain/models/git_repo_issue_model.dart';
import 'package:gh_repo_search/extensions/context_extensions.dart';
import 'package:gh_repo_search/mixins/formatters.dart';
import 'package:gh_repo_search/ui/constants/colors.dart';
import 'package:gh_repo_search/ui/constants/dimens.dart';
import 'package:gh_repo_search/ui/constants/icons.dart';
import 'package:gh_repo_search/ui/screens/repo_details/bloc/repo_details_cubit.dart';
import 'package:gh_repo_search/ui/widgets/bar/primary_app_bar.dart';
import 'package:gh_repo_search/ui/widgets/display/text_with_icon.dart';
import 'package:gh_repo_search/ui/widgets/img/network_img.dart';
import 'package:gh_repo_search/ui/widgets/info/info_card.dart';
import 'package:gh_repo_search/ui/widgets/loading/app_loading.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart' show launchUrl;

part 'widget/repo_details_info_tab.dart';

part 'widget/repo_details_issues_item.dart';

part 'widget/repo_details_issues_tab.dart';

part 'widget/repo_details_nav_bar.dart';

part 'widget/repo_details_tabs.dart';

class RepoDetailsScreen extends StatelessWidget {
  const RepoDetailsScreen({super.key, required this.fullName});

  final String fullName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RepoDetailsCubit>(
      create: (context) => RepoDetailsCubit(fullName: fullName, RepositoryProvider.of<GitRepoRepository>(context)),
      child: BlocBuilder<RepoDetailsCubit, RepoDetailsState>(
        buildWhen: (prev, curr) => prev.status != curr.status,
        builder: (context, state) {
          return Scaffold(
            appBar: PrimaryAppBar(label: fullName, backIconButtonVisible: true, backIconButtonAction: context.pop),
            bottomNavigationBar: state.status == RepoDetailsStatus.view ? const _RepoDetailsNavBar() : null,
            body: switch (state.status) {
              RepoDetailsStatus.loading => const AppLoading(),
              RepoDetailsStatus.view => const _RepoDetailsTabs(),
              RepoDetailsStatus.error => Padding(
                padding: const EdgeInsets.all(paddingMd),
                child: InfoCard(msg: context.tr.repoDetailsError, isError: true),
              ),
            },
          );
        },
      ),
    );
  }
}
