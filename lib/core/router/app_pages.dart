import 'package:oalet/core/router/app_routes.dart';
import 'package:oalet/features/home/presentation/home_screen.dart';
import 'package:oalet/features/landing/presentation/landing_screen.dart';
import 'package:oalet/features/splash/presentation/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppPages {
  AppPages._();

  static final GoRouter routes =
      GoRouter(initialLocation: Paths.splashScreen, routes: [
    GoRoute(
        name: Paths.splashScreen,
        path: Paths.splashScreen,
        builder: (context, state) => const SplashScreen()),
        GoRoute(
          path: Paths.homeScreen,
          name: Paths.homeScreen,
          builder: (context, state) => const HomeScreen()
        ),
        GoRoute(
          path: Paths.landingScreen,
          name: Paths.landingScreen,
          builder: (context, state) => const LandingScreen()
        )
  ]);
}
