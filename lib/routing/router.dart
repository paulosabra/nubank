import 'package:go_router/go_router.dart';
import 'package:nubank/pages/home/home_page.dart';
import 'package:nubank/pages/splash/splash_page.dart';
import 'package:nubank/routing/routes.dart';

GoRouter router() => GoRouter(
  initialLocation: Routes.splash,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: Routes.splash,
      builder: (context, state) {
        return const SplashPage();
      },
    ),
    GoRoute(
      path: Routes.home,
      builder: (context, state) {
        return const HomePage();
      },
    ),
  ],
);
