import 'dart:convert';

import 'package:free_flutter_ui_kits/services/api_services.dart';

import 'model/general_response.dart';

class ApiCall {
  Future<void> buttonClick(String value1) async {
    await getInitialData(value1).then((value) async {
      print("1");
      print(value.message);
    });
  }

  Future<GenaralResponse> getInitialData(String value) async {
    var requestbody = jsonEncode(<String, String>{
      'OrganizationName': value,
    });

    return await ApiServices().sendRequest(requestbody, 'InitRequest');
  }

  Future<void> buttonClickcap() async {
    try {
      // Constructing the request body
      var requestBody = jsonEncode({
        "StartTime": "22:22:45",
        "EndTime": "22:22:49",
        "StartDate": "2024-05-09",
        "EndDate": "2024-05-09",
        "ScreenName": "Checking Balance@5555",
        "IsFinalGoal": false,
        "ButtonName": "Login",
        "Sequence": 1,
        "Property1": "",
        "Property2": ""
      });

      // Calling the getInitialData method
      var response = await getInitialDatakey(requestBody);
      print("10");
      print(response.message);
    } catch (e) {
      print("Error: $e");
    }
  }

  Future<GenaralResponse> getInitialDatakey(String requestBody) async {
    // Calling the sendRequest method from ApiServices class
    return await ApiServices().sendRequest(requestBody, 'CaptureKeyStorokes');
  }
}
