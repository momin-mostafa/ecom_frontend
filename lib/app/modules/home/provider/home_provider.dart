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
}
