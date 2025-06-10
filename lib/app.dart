import 'package:flutter/material.dart';
import 'package:nubank/core/localization/app_localizations.dart';
import 'package:nubank/core/utils/extensions/context.dart';
import 'package:nubank/routing/router.dart';

class NuApp extends StatelessWidget {
  const NuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      onGenerateTitle: (context) => context.l10n.appName,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router(),
    );
  }
}
