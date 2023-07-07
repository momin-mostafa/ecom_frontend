import 'dart:convert';
import 'dart:developer';

import 'package:ecom_frontend/app/data/common/api_response.dart';
import 'package:ecom_frontend/app/data/helper/check_api.dart';
import 'package:ecom_frontend/app/modules/home/model/product.dart';
import 'package:ecom_frontend/app/modules/home/provider/home_provider.dart';
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
    ApiResponse apiResponse = await Get.find<HomeProvider>().testCallToLocal();
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
  }
}
