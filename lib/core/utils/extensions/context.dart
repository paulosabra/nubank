import 'package:flutter/material.dart';
import 'package:nubank/core/localization/app_localizations.dart';

extension Context on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
