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

  @override
  String get loan => 'Empréstimo';

  @override
  String get amountAvailable => 'Valor disponível de até';

  @override
  String get paymentAssistantTitle => 'Planeje suas contas';

  @override
  String get paymentAssistantDescription =>
      'Acompanhe, pague e programe com a ajuda do assistente de pagamentos.';

  @override
  String get accessButton => 'Accessar';

  @override
  String get discoverMore => 'Descubra mais';

  @override
  String get ultravioletTitle => 'Nubank Ultravioleta';

  @override
  String get ultravioletDescription =>
      'Soluções pensadas para você. Como deveria ser.';

  @override
  String get nubankPlusTitle => 'Nubank+';

  @override
  String get nubankPlusDescription =>
      'A evolução da sua experiência Nubank com ainda mais vantagens para o seu dia a dia.';

  @override
  String get nubankCryptoTitle => 'Nubank Crypto';

  @override
  String get nubankCryptoDescription =>
      'Compre, venda e transfira criptoativos sem sair do app.';

  @override
  String get nuPayTitle => 'NuPay';

  @override
  String get nuPayDescription =>
      'Pague suas compras online com segurança direto pelo app do Nu.';

  @override
  String get nuCellTitle => 'NuCel';

  @override
  String get nuCellDescription =>
      'Planos de celular simples pensados para você não ter surpresas.';

  @override
  String get termsUseTitle => 'Termos de uso';

  @override
  String get termsUseDescription =>
      'Explicamos o que diz esse documento do Nubank.';

  @override
  String get knowButton => 'Conhecer';
}
