import 'package:flutter/material.dart';
import 'package:nubank/components/app_bar.dart';
import 'package:nubank/components/card.dart';
import 'package:nubank/core/utils/extensions/context.dart';

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
            ],
          ),
        ),
      ),
    );
  }
}
