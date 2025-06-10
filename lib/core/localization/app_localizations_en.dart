// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Nubank';

  @override
  String greeting(String username) {
    return 'Hi, $username';
  }

  @override
  String get accountBalance => 'Account balance';

  @override
  String get pixArea => 'Pix Area';

  @override
  String get pay => 'Pay';

  @override
  String get transfer => 'Transfer';

  @override
  String get deposit => 'Deposit';

  @override
  String get rechard => 'Recharge';

  @override
  String get invest => 'Invest';

  @override
  String get myCards => 'My cards';

  @override
  String get creditCard => 'Credit card';

  @override
  String get currentInvoice => 'Current invoice';

  @override
  String availableLimit(String value) {
    return 'Available limit of $value';
  }

  @override
  String get beUltraviolet => 'Be Ultraviolet';

  @override
  String get loan => 'Loan';

  @override
  String get amountAvailable => 'Amount available up to';

  @override
  String get paymentAssistantTitle => 'Plan your bills';

  @override
  String get paymentAssistantDescription =>
      'Track, pay and schedule with the help of the payment assistant.';

  @override
  String get accessButton => 'Access';

  @override
  String get discoverMore => 'Discover more';

  @override
  String get ultravioletTitle => 'Nubank Ultraviolet';

  @override
  String get ultravioletDescription =>
      'Solutions designed for you. As it should be.';

  @override
  String get nubankPlusTitle => 'Nubank+';

  @override
  String get nubankPlusDescription =>
      'The evolution of your Nubank experience with even more advantages for your daily life.';

  @override
  String get nubankCryptoTitle => 'Nubank Crypto';

  @override
  String get nubankCryptoDescription =>
      'Buy, sell and transfer crypto assets without leaving the app.';

  @override
  String get nuPayTitle => 'NuPay';

  @override
  String get nuPayDescription =>
      'Pay for your online purchases securely directly through the Nu app.';

  @override
  String get nuCellTitle => 'NuCell';

  @override
  String get nuCellDescription =>
      'Simple cell phone plans designed to give you no surprises.';

  @override
  String get termsUseTitle => 'Terms of use';

  @override
  String get termsUseDescription =>
      'We explain what this Nubank document says.';

  @override
  String get knowButton => 'Know';
}
