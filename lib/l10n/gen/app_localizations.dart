import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'GitHub Repo Search'**
  String get appName;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @loadingMore.
  ///
  /// In en, this message translates to:
  /// **'Loading more...'**
  String get loadingMore;

  /// No description provided for @info.
  ///
  /// In en, this message translates to:
  /// **'Information'**
  String get info;

  /// No description provided for @repoSearchHint.
  ///
  /// In en, this message translates to:
  /// **'Use the search bar above to find a public GitHub repository. The search query should consist of comma separated key words.'**
  String get repoSearchHint;

  /// No description provided for @repoNoSearchResults.
  ///
  /// In en, this message translates to:
  /// **'No repositories found for the provided query. Try another query.'**
  String get repoNoSearchResults;

  /// No description provided for @repoSearchError.
  ///
  /// In en, this message translates to:
  /// **'An error occured while searching for repositories. Please try again later or try another query.'**
  String get repoSearchError;

  /// No description provided for @repoDetailsError.
  ///
  /// In en, this message translates to:
  /// **'An error occured while loading this repository. Please try again later.'**
  String get repoDetailsError;

  /// No description provided for @repoInfoTab.
  ///
  /// In en, this message translates to:
  /// **'Info'**
  String get repoInfoTab;

  /// No description provided for @repoIssuesTab.
  ///
  /// In en, this message translates to:
  /// **'Issues'**
  String get repoIssuesTab;

  /// No description provided for @repoLang.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get repoLang;

  /// No description provided for @repoOwner.
  ///
  /// In en, this message translates to:
  /// **'Owner'**
  String get repoOwner;

  /// No description provided for @repoStars.
  ///
  /// In en, this message translates to:
  /// **'Stars'**
  String get repoStars;

  /// No description provided for @repoNStars.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{no stars} =1{1 star} other{{count} stars}}'**
  String repoNStars(num count);

  /// No description provided for @repoIssues.
  ///
  /// In en, this message translates to:
  /// **'Open issues'**
  String get repoIssues;

  /// No description provided for @repoNIssues.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{no open issues} =1{1 open issue} other{{count} open issues}}'**
  String repoNIssues(num count);

  /// No description provided for @repoForks.
  ///
  /// In en, this message translates to:
  /// **'Forks'**
  String get repoForks;

  /// No description provided for @repoNForks.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{no forks} =1{1 fork} other{{count} forks}}'**
  String repoNForks(num count);

  /// No description provided for @repoWatchers.
  ///
  /// In en, this message translates to:
  /// **'Watchers'**
  String get repoWatchers;

  /// No description provided for @repoNWatchers.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{no watchers} =1{1 watcher} other{{count} watchers}}'**
  String repoNWatchers(num count);

  /// No description provided for @repoCreatedAt.
  ///
  /// In en, this message translates to:
  /// **'Created at'**
  String get repoCreatedAt;

  /// No description provided for @repoCreatedOn.
  ///
  /// In en, this message translates to:
  /// **'Created on {date}'**
  String repoCreatedOn(DateTime date);

  /// No description provided for @repoUpdatedAt.
  ///
  /// In en, this message translates to:
  /// **'Updated at'**
  String get repoUpdatedAt;

  /// No description provided for @repoUpdatedOn.
  ///
  /// In en, this message translates to:
  /// **'Updated on {date}'**
  String repoUpdatedOn(DateTime date);

  /// No description provided for @repoOpenInBrowser.
  ///
  /// In en, this message translates to:
  /// **'Open repository in browser'**
  String get repoOpenInBrowser;

  /// No description provided for @repoIssuesLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading issues...'**
  String get repoIssuesLoading;

  /// No description provided for @repoIssueNumber.
  ///
  /// In en, this message translates to:
  /// **'Issue number'**
  String get repoIssueNumber;

  /// No description provided for @repoIssueOpenInBrowser.
  ///
  /// In en, this message translates to:
  /// **'Open issue in browser'**
  String get repoIssueOpenInBrowser;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
