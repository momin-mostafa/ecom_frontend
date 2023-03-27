import 'package:ecom_frontend/app/utils/app_const.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  final String baseUrl = AppConst.baseUrl;
  ApiClient();

  Future<http.Response> get(endpoint, {String? queryParameter}) async {
    if (queryParameter != null) {
      return await http.get(Uri.parse('$baseUrl/$endpoint/$queryParameter'));
    }
    return await http.get(Uri.parse('$baseUrl/$endpoint'));
  }
}
