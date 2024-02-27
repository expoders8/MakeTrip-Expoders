import 'package:get/get.dart';

import '../ui/home/home.dart';
import '../ui/TopDestination/top_destination.dart';
import '../ui/Travelplanning/travel_planning.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.homePage;

  static final routes = [
    GetPage(
      name: _Paths.homePage,
      page: () => const HomePage(),
    ),
    GetPage(
      name: _Paths.travelPlanningPage,
      page: () => const TravelPlanningPage(),
    ),
    GetPage(
      name: _Paths.topDestinationPage,
      page: () => const TopDestinationPage(),
    ),
  ];
}
