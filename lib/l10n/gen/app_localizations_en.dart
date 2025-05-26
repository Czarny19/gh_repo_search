// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'GitHub Repo Search';

  @override
  String get back => 'Back';

  @override
  String get search => 'Search';

  @override
  String get loading => 'Loading...';

  @override
  String get loadingMore => 'Loading more...';

  @override
  String get info => 'Information';

  @override
  String get repoSearchHint =>
      'Use the search bar above to find a public GitHub repository. The search query should consist of comma separated key words.';

  @override
  String get repoNoSearchResults =>
      'No repositories found for the provided query. Try another query.';

  @override
  String get repoSearchError =>
      'An error occured while searching for repositories. Please try again later or try another query.';

  @override
  String get repoDetailsError =>
      'An error occured while loading this repository. Please try again later.';

  @override
  String get repoInfoTab => 'Info';

  @override
  String get repoIssuesTab => 'Issues';

  @override
  String get repoLang => 'Language';

  @override
  String get repoOwner => 'Owner';

  @override
  String get repoStars => 'Stars';

  @override
  String repoNStars(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString stars',
      one: '1 star',
      zero: 'no stars',
    );
    return '$_temp0';
  }

  @override
  String get repoIssues => 'Open issues';

  @override
  String repoNIssues(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString open issues',
      one: '1 open issue',
      zero: 'no open issues',
    );
    return '$_temp0';
  }

  @override
  String get repoForks => 'Forks';

  @override
  String repoNForks(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString forks',
      one: '1 fork',
      zero: 'no forks',
    );
    return '$_temp0';
  }

  @override
  String get repoWatchers => 'Watchers';

  @override
  String repoNWatchers(num count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString watchers',
      one: '1 watcher',
      zero: 'no watchers',
    );
    return '$_temp0';
  }

  @override
  String get repoCreatedAt => 'Created at';

  @override
  String repoCreatedOn(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMMMd(localeName);
    final String dateString = dateDateFormat.format(date);

    return 'Created on $dateString';
  }

  @override
  String get repoUpdatedAt => 'Updated at';

  @override
  String repoUpdatedOn(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMMMd(localeName);
    final String dateString = dateDateFormat.format(date);

    return 'Updated on $dateString';
  }

  @override
  String get repoOpenInBrowser => 'Open repository in browser';

  @override
  String get repoIssuesLoading => 'Loading issues...';

  @override
  String get repoIssueNumber => 'Issue number';

  @override
  String get repoIssueOpenInBrowser => 'Open issue in browser';
}
