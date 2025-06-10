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
}
