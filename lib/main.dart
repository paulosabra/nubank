import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank/app.dart';
import 'package:nubank/core/themes/colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: AppColors.primary,
    ),
  );

  runApp(const NuApp());
}
