abstract class Paths {
  static const splashScreen = "/splash-screen";
  static const homeScreen = "/home-screen";
  static const landingScreen = "/landing-screen";
}

abstract class AppRoutes {
  AppRoutes._();
  static const splashScreen = Paths.splashScreen;
  static const homeScreen = Paths.homeScreen;
  static const landingScreen = Paths.landingScreen;
}
