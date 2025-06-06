import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show RepositoryProvider;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gh_repo_search/api/config/api_config.dart';
import 'package:gh_repo_search/domain/repositories/git_repo_repository.dart';
import 'package:gh_repo_search/l10n/gen/app_localizations.dart';
import 'package:gh_repo_search/router/router.dart' show goRouter;
import 'package:gh_repo_search/ui/theme/dark_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(create: (context) => ApiConfig(), child: const _App());
  }
}

class _App extends StatelessWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    final apiRepo = RepositoryProvider.of<ApiConfig>(context);

    return RepositoryProvider(
      create: (context) => GitRepoRepository(apiRepo.dio),
      child: MaterialApp.router(
        title: 'GH Repo Search',
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          AppLocalizations.delegate,
        ],
        supportedLocales: const [Locale('en')],
        theme: darkThemeData,
        routerConfig: goRouter,
      ),
    );
  }
}
