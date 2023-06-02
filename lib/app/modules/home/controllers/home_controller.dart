import 'dart:convert';
import 'dart:developer';

import 'package:ecom_frontend/app/data/common/api_response.dart';
import 'package:ecom_frontend/app/modules/home/model/product.dart';
import 'package:ecom_frontend/app/modules/home/provider/home_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getAllProduct();
  }

  RxList<Product?> listOfProduct = <Product>[].obs;
  Product? selectedProduct;

  Future getSingleProductById(String id) async {
    ApiResponse apiResponse =
        await Get.find<HomeProvider>().getProduct(query: id);
    checkApi(apiResponse, () {
      selectedProduct =
          Product.fromJson(jsonDecode(apiResponse.response!.body));
    });
  }

  Future getAllProduct() async {
    List<Product> temp = [];
    // Product? temp;
    ApiResponse apiResponse = await Get.find<HomeProvider>().getProduct();
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
            print(element.runtimeType);
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
  }

  checkApi(ApiResponse apiResponse, Function addFunction) {
    if (apiResponse.response != null &&
        apiResponse.response!.statusCode == 200) {
      debugPrint(apiResponse.response!.body);
      addFunction();
    } else {
      debugPrint("App DEBUG ==> ${apiResponse.response?.reasonPhrase}");
      Get.snackbar('APP Debug', '${apiResponse.response?.reasonPhrase}');
    }
  }
}
