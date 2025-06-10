// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appName => 'Nubank';

  @override
  String greeting(String username) {
    return 'Olá, $username';
  }

  @override
  String get accountBalance => 'Saldo em conta';

  @override
  String get pixArea => 'Área Pix';

  @override
  String get pay => 'Pagar';

  @override
  String get transfer => 'Transferir';

  @override
  String get deposit => 'Depositar';

  @override
  String get rechard => 'Recarga';

  @override
  String get invest => 'Investir';

  @override
  String get myCards => 'Meus cartões';

  @override
  String get creditCard => 'Cartão de crédito';

  @override
  String get currentInvoice => 'Fatura atual';

  @override
  String availableLimit(String value) {
    return 'Limite disponível de $value';
  }

  @override
  String get beUltraviolet => 'Seja Ultravioleta';
}
