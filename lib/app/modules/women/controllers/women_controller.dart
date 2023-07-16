import 'dart:convert';
import 'dart:developer';

import 'package:ecom_frontend/app/data/common/api_response.dart';
import 'package:ecom_frontend/app/data/helper/check_api.dart';
import 'package:ecom_frontend/app/modules/home/model/product.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

class WomenController extends GetxController {
  RxList<Product> listOfWomanProduct = <Product>[].obs;
  RxList<Product> listOfProduct = <Product>[].obs;

  @override
  void onReady() {
    getAllProduct();
    super.onReady();
  }

  Future getAllProduct() async {
    List<Product> temp = [];
    // Product? temp;
    ApiResponse apiResponse = await testCallToLocal();
    checkApi(apiResponse, () {
      // for (var element in jsonDecode(apiResponse.response!.body)) {
      // log(element, name: 'Element');
      try {
        // temp.add(temp.fromJson(element));

        if (apiResponse.response != null) {
          // temp = Product.fromJson(jsonDecode(apiResponse.response!.body));
          var data = jsonDecode(apiResponse.response!.body);
          // print(data.runtimeType);
          for (var element in data) {
            temp.add(Product.fromJson(element));
          }
        }
      } catch (e) {
        log(e.toString(), name: 'getAllProduct HomeController');
      }
      // }
    });
    // listOfProduct.value = temp;

    listOfProduct.value = temp;
    filterForMen();
  }

  filterForMen() {
    List<Product> temp = [];
    for (var element in listOfProduct) {
      if (element.category == 'f') {
        temp.add(element);
      }
    }
    listOfWomanProduct.value = temp;
    update();
  }

  testCallToLocal() async {
    var response = await http.get(
        Uri.parse('http://127.0.0.1:8000/api/product-list/'),
        headers: {'Content-Type': 'application/json', 'Accept': '*/*'});
    if (response.statusCode == 200) {
      return ApiResponse.withSuccess(response);
    }
    return ApiResponse.fromError("Response not 200");
  }
}
