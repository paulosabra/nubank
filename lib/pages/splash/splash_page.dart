import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nubank/core/assets/images.dart';
import 'package:nubank/core/themes/colors.dart';
import 'package:nubank/routing/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  static const Duration _splashDelay = Duration(seconds: 3);

  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  Future<void> _navigateToHome() async {
    await Future.delayed(_splashDelay);
    if (!mounted) return;
    context.go(Routes.home);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: AppColors.primary,
      ),
    );

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Center(child: SvgPicture.asset(AppImages.logo, height: 60)),
      ),
    );
  }
}
