import 'package:go_router/go_router.dart';
import 'package:nubank/pages/home/home_page.dart';
import 'package:nubank/routing/routes.dart';

GoRouter router() => GoRouter(
  initialLocation: Routes.home,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: Routes.home,
      builder: (context, state) {
        return const HomePage();
      },
    ),
  ],
);
