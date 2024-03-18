part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const homePage = _Paths.homePage;
  static const loginPage = _Paths.loginPage;
  static const eventsPage = _Paths.eventsPage;
  static const tripDetailsPage = _Paths.tripDetailsPage;
  static const upgradeToProPage = _Paths.upgradeToProPage;
  static const travelPlanningPage = _Paths.travelPlanningPage;
  static const topDestinationPage = _Paths.topDestinationPage;
}

abstract class _Paths {
  static const homePage = '/homePage';
  static const loginPage = '/loginPage';
  static const eventsPage = '/eventsPage';
  static const tripDetailsPage = '/tripDetailsPage';
  static const upgradeToProPage = '/upgradeToProPage';
  static const travelPlanningPage = '/travelPlanningPage';
  static const topDestinationPage = '/topDestinationPage';
}
