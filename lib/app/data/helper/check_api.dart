import 'package:ecom_frontend/app/data/common/api_response.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

checkApi(ApiResponse apiResponse, Function addFunction) {
  if (apiResponse.response != null && apiResponse.response!.statusCode == 200) {
    debugPrint(apiResponse.response!.body);
    addFunction();
  } else {
    debugPrint("App DEBUG ==> ${apiResponse.response?.reasonPhrase}");
    Get.snackbar('APP Debug', '${apiResponse.response?.reasonPhrase}');
  }
}
