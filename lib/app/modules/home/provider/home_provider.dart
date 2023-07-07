import 'package:ecom_frontend/app/data/common/api_response.dart';
import 'package:ecom_frontend/app/data/common/client.dart';
import 'package:http/http.dart' as http;
// import 'package:get/get_connect.dart';

class HomeProvider {
  ApiClient apiClient = ApiClient();

  Future<ApiResponse> getProduct({String? query}) async {
    try {
      // Response response = await apiClient.get('/products');
      http.Response response =
          await apiClient.get('products', queryParameter: query);
      // print(response.body);
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.fromError(e);
    }
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
