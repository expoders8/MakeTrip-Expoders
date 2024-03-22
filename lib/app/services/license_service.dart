import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:maketrip/config/provider/loader_provider.dart';

import '../../config/constant/constant.dart';
import '../../config/provider/snackbar_provider.dart';

class LicenseService {
  applyLicense(String text) async {
    try {
      var response = await http
          .get(Uri.parse('$baseUrl/api/get-license-key/$text'), headers: {
        'Content-type': 'application/json',
      });
      if (response.statusCode == 200) {
        LoaderX.hide();
        Get.back();
      } else {
        LoaderX.hide();
        SnackbarUtils.showErrorSnackbar("The License key is invalid!", "");
        return Future.error("Server Error");
      }
    } catch (e) {
      LoaderX.hide();
      SnackbarUtils.showErrorSnackbar("Failed to License", e.toString());
      throw e.toString();
    }
  }
}
