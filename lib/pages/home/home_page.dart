import 'package:flutter/material.dart';
import 'package:nubank/components/app_bar.dart';
import 'package:nubank/components/button.dart';
import 'package:nubank/components/card.dart';
import 'package:nubank/core/assets/icons.dart';
import 'package:nubank/core/themes/colors.dart';
import 'package:nubank/core/utils/extensions/context.dart';
import 'package:nubank/pages/home/widgets/account_menu_item.dart';
import 'package:nubank/pages/home/widgets/know_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NuAppBar(userName: 'Paulo Henrique'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              NuCard(
                data: context.l10n.accountBalance,
                children: const [
                  Text(
                    r'R$ 0,00',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 110,
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  children: [
                    AccountMenuItem(
                      title: context.l10n.pixArea,
                      icon: AppIcon.pixIcon,
                      onPressed: () {},
                    ),
                    AccountMenuItem(
                      title: context.l10n.pay,
                      icon: AppIcon.barcodeIcon,
                      onPressed: () {},
                    ),
                    AccountMenuItem(
                      title: context.l10n.transfer,
                      icon: AppIcon.moneyOutIcon,
                      onPressed: () {},
                    ),
                    AccountMenuItem(
                      title: context.l10n.deposit,
                      icon: AppIcon.moneyInIcon,
                      onPressed: () {},
                    ),
                    AccountMenuItem(
                      title: context.l10n.rechard,
                      icon: AppIcon.smartphoneIcon,
                      onPressed: () {},
                    ),
                    AccountMenuItem(
                      title: context.l10n.invest,
                      icon: AppIcon.safeCellIcon,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 32,
                ),
                child: NuButton.secondary(
                  text: context.l10n.myCards,
                  icon: AppIcon.cardIcon,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${context.l10n.myCards} Button Pressed'),
                      ),
                    );
                  },
                ),
              ),
              NuCard(
                data: context.l10n.creditCard,
                children: [
                  Text(
                    context.l10n.currentInvoice,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Text(
                    r'R$ 0,00',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    context.l10n.availableLimit(r'R$ 0,00'),
                    style: const TextStyle(
                      color: AppColors.neutralDark,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(height: 16),
                  NuButton.secondary(
                    text: context.l10n.beUltraviolet,
                    icon: AppIcon.gemIcon,
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            '${context.l10n.beUltraviolet} Button Pressed',
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
              NuCard(
                data: context.l10n.loan,
                children: [
                  Text(
                    context.l10n.amountAvailable,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Text(
                    r'R$ 0,00',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              NuCard(
                data: context.l10n.paymentAssistantTitle,
                children: [
                  Text(
                    context.l10n.paymentAssistantDescription,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 16),
                  NuButton.primary(
                    text: context.l10n.accessButton,
                    onPressed: () {},
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(color: AppColors.neutralLight, height: 2),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 32,
                    ),
                    child: Text(
                      context.l10n.discoverMore,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    KnowCard(
                      title: context.l10n.ultravioletTitle,
                      description: context.l10n.ultravioletDescription,
                    ),
                    KnowCard(
                      title: context.l10n.nubankPlusTitle,
                      description: context.l10n.nubankPlusDescription,
                    ),
                    KnowCard(
                      title: context.l10n.nubankCryptoTitle,
                      description: context.l10n.nubankCryptoDescription,
                    ),
                    KnowCard(
                      title: context.l10n.nuPayTitle,
                      description: context.l10n.nuPayDescription,
                    ),
                    KnowCard(
                      title: context.l10n.nuCellTitle,
                      description: context.l10n.nuCellDescription,
                    ),
                    KnowCard(
                      title: context.l10n.termsUseTitle,
                      description: context.l10n.termsUseDescription,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              const RateButton(),
            ],
          ),
        ),
      ),
    );
  }
}
