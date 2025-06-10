import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localizations.dart';
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
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('pt'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Nubank'**
  String get appName;

  /// No description provided for @greeting.
  ///
  /// In en, this message translates to:
  /// **'Hi, {username}'**
  String greeting(String username);

  /// No description provided for @accountBalance.
  ///
  /// In en, this message translates to:
  /// **'Account balance'**
  String get accountBalance;

  /// No description provided for @pixArea.
  ///
  /// In en, this message translates to:
  /// **'Pix Area'**
  String get pixArea;

  /// No description provided for @pay.
  ///
  /// In en, this message translates to:
  /// **'Pay'**
  String get pay;

  /// No description provided for @transfer.
  ///
  /// In en, this message translates to:
  /// **'Transfer'**
  String get transfer;

  /// No description provided for @deposit.
  ///
  /// In en, this message translates to:
  /// **'Deposit'**
  String get deposit;

  /// No description provided for @rechard.
  ///
  /// In en, this message translates to:
  /// **'Recharge'**
  String get rechard;

  /// No description provided for @invest.
  ///
  /// In en, this message translates to:
  /// **'Invest'**
  String get invest;

  /// No description provided for @myCards.
  ///
  /// In en, this message translates to:
  /// **'My cards'**
  String get myCards;

  /// No description provided for @creditCard.
  ///
  /// In en, this message translates to:
  /// **'Credit card'**
  String get creditCard;

  /// No description provided for @currentInvoice.
  ///
  /// In en, this message translates to:
  /// **'Current invoice'**
  String get currentInvoice;

  /// No description provided for @availableLimit.
  ///
  /// In en, this message translates to:
  /// **'Available limit of {value}'**
  String availableLimit(String value);

  /// No description provided for @beUltraviolet.
  ///
  /// In en, this message translates to:
  /// **'Be Ultraviolet'**
  String get beUltraviolet;

  /// No description provided for @loan.
  ///
  /// In en, this message translates to:
  /// **'Loan'**
  String get loan;

  /// No description provided for @amountAvailable.
  ///
  /// In en, this message translates to:
  /// **'Amount available up to'**
  String get amountAvailable;

  /// No description provided for @paymentAssistantTitle.
  ///
  /// In en, this message translates to:
  /// **'Plan your bills'**
  String get paymentAssistantTitle;

  /// No description provided for @paymentAssistantDescription.
  ///
  /// In en, this message translates to:
  /// **'Track, pay and schedule with the help of the payment assistant.'**
  String get paymentAssistantDescription;

  /// No description provided for @accessButton.
  ///
  /// In en, this message translates to:
  /// **'Access'**
  String get accessButton;

  /// No description provided for @discoverMore.
  ///
  /// In en, this message translates to:
  /// **'Discover more'**
  String get discoverMore;

  /// No description provided for @ultravioletTitle.
  ///
  /// In en, this message translates to:
  /// **'Nubank Ultraviolet'**
  String get ultravioletTitle;

  /// No description provided for @ultravioletDescription.
  ///
  /// In en, this message translates to:
  /// **'Solutions designed for you. As it should be.'**
  String get ultravioletDescription;

  /// No description provided for @nubankPlusTitle.
  ///
  /// In en, this message translates to:
  /// **'Nubank+'**
  String get nubankPlusTitle;

  /// No description provided for @nubankPlusDescription.
  ///
  /// In en, this message translates to:
  /// **'The evolution of your Nubank experience with even more advantages for your daily life.'**
  String get nubankPlusDescription;

  /// No description provided for @nubankCryptoTitle.
  ///
  /// In en, this message translates to:
  /// **'Nubank Crypto'**
  String get nubankCryptoTitle;

  /// No description provided for @nubankCryptoDescription.
  ///
  /// In en, this message translates to:
  /// **'Buy, sell and transfer crypto assets without leaving the app.'**
  String get nubankCryptoDescription;

  /// No description provided for @nuPayTitle.
  ///
  /// In en, this message translates to:
  /// **'NuPay'**
  String get nuPayTitle;

  /// No description provided for @nuPayDescription.
  ///
  /// In en, this message translates to:
  /// **'Pay for your online purchases securely directly through the Nu app.'**
  String get nuPayDescription;

  /// No description provided for @nuCellTitle.
  ///
  /// In en, this message translates to:
  /// **'NuCell'**
  String get nuCellTitle;

  /// No description provided for @nuCellDescription.
  ///
  /// In en, this message translates to:
  /// **'Simple cell phone plans designed to give you no surprises.'**
  String get nuCellDescription;

  /// No description provided for @termsUseTitle.
  ///
  /// In en, this message translates to:
  /// **'Terms of use'**
  String get termsUseTitle;

  /// No description provided for @termsUseDescription.
  ///
  /// In en, this message translates to:
  /// **'We explain what this Nubank document says.'**
  String get termsUseDescription;

  /// No description provided for @knowButton.
  ///
  /// In en, this message translates to:
  /// **'Know'**
  String get knowButton;
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
      <String>['en', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
