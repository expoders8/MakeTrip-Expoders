part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const homePage = _Paths.homePage;
  static const travelPlanningPage = _Paths.travelPlanningPage;
  static const topDestinationPage = _Paths.topDestinationPage;
}

abstract class _Paths {
  static const homePage = '/homePage';
  static const travelPlanningPage = '/travelPlanningPage';
  static const topDestinationPage = '/topDestinationPage';
}
