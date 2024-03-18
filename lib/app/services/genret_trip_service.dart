import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../config/constant/constant.dart';
import '../../config/provider/snackbar_provider.dart';
import '../ui/Travelplanning/travel_planning.dart';

class TripService {
  genrateTrip(
    String city,
    String days,
    String kind,
    String budget,
    String transportation,
  ) async {
    try {
      var response = await http.post(Uri.parse('$baseUrl/api/create-trip'),
          body: json.encode({
            "city": city,
            "days": days,
            "accommodation": "",
            "kind": kind,
            "currency": "USD",
            "budget": budget,
            "transportation": transportation,
            "id": ""
          }),
          headers: {
            'Content-type': 'application/json',
          });
      if (response.statusCode == 200) {
        // var decodedUser = jsonDecode(response.body);
        Get.back();
        Get.to(() => TravelPlanningPage(city: city, dayDetails: response.body));
      } else {
        // LoaderX.hide();
        SnackbarUtils.showErrorSnackbar("Server Error",
            "Error while user login, Please try after some time.");
        return Future.error("Server Error");
      }
    } catch (e) {
      // LoaderX.hide();
      SnackbarUtils.showErrorSnackbar("Failed to Trip", e.toString());
      throw e.toString();
    }
  }
}
