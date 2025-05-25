import 'package:flutter/material.dart';
import 'package:gh_repo_search/ui/screens/repo_details/repo_details_screen.dart';
import 'package:gh_repo_search/ui/screens/repo_list/repo_list_screen.dart';
import 'package:go_router/go_router.dart';

const routeRepoList = 'repoList';
const routeRepoDetails = 'homeMeals';

const _pathRepoList = '/repos';
const _pathRepoDetailsMain = '/repo/:fullName';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final goRouter = GoRouter(
  initialLocation: _pathRepoList,
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
      name: routeRepoList,
      path: _pathRepoList,
      pageBuilder: (context, state) {
        return _pageTranstion(child: const RepoListScreen());
      },
    ),
    GoRoute(
      name: routeRepoDetails,
      path: _pathRepoDetailsMain,
      pageBuilder: (context, state) {
        final fullName = state.pathParameters['fullName'].toString();
        return _pageTranstion(child: RepoDetailsScreen(fullName: fullName));
      },
    ),
  ],
);

CustomTransitionPage _pageTranstion({LocalKey? key, required Widget child}) => CustomTransitionPage(
  key: key,
  child: child,
  transitionsBuilder: (context, animation, secondaryAnimation, child) {
    const begin = Offset(0.0, 1.0);
    const end = Offset.zero;
    const curve = Curves.ease;

    final tween = Tween(begin: begin, end: end);
    final curvedAnimation = CurvedAnimation(parent: animation, curve: curve);

    return SlideTransition(position: tween.animate(curvedAnimation), child: child);
  },
);
