import 'dart:convert';
import 'dart:developer';

import 'package:ecom_frontend/app/modules/home/model/product.dart';
import 'package:get/get.dart';

import '../../../data/common/api_response.dart';
import '../../../data/helper/check_api.dart';
import 'package:http/http.dart' as http;

class MensController extends GetxController {
  RxList<Product> listOfProduct = <Product>[].obs;
  RxList<Product> listOfMaleProduct = <Product>[].obs;

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
      try {
        if (apiResponse.response != null) {
          var data = jsonDecode(apiResponse.response!.body);
          for (var element in data) {
            temp.add(Product.fromJson(element));
          }
        }
      } catch (e) {
        log(e.toString(), name: 'getAllProduct HomeController');
      }
    });
    listOfProduct.value = temp;
    filterForMen();
  }

  filterForMen() {
    List<Product> temp = [];
    for (var element in listOfProduct) {
      if (element.category == 'm') {
        temp.add(element);
      }
    }
    listOfMaleProduct.value = temp;
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
