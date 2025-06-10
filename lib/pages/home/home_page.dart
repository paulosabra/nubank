import 'package:flutter/material.dart';
import 'package:nubank/components/app_bar.dart';
import 'package:nubank/components/card.dart';
import 'package:nubank/core/assets/icons.dart';
import 'package:nubank/core/utils/extensions/context.dart';
import 'package:nubank/pages/home/widgets/account_menu_item.dart';

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
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(width: 24),
                    AccountMenuItem(
                      title: context.l10n.pixArea,
                      icon: AppIcon.pixIcon,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 12),
                    AccountMenuItem(
                      title: context.l10n.pay,
                      icon: AppIcon.barcodeIcon,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 12),
                    AccountMenuItem(
                      title: context.l10n.transfer,
                      icon: AppIcon.moneyOutIcon,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 12),
                    AccountMenuItem(
                      title: context.l10n.deposit,
                      icon: AppIcon.moneyInIcon,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 12),
                    AccountMenuItem(
                      title: context.l10n.rechard,
                      icon: AppIcon.smartphoneIcon,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 12),
                    AccountMenuItem(
                      title: context.l10n.invest,
                      icon: AppIcon.safeCellIcon,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 24),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
