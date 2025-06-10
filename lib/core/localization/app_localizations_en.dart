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
}
