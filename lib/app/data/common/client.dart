import 'package:http/http.dart' as http;

class ApiClient {
  final String baseUrl;
  ApiClient(this.baseUrl);

  Future<http.Response> get(endpoint, {String? queryParameter}) async {
    if (queryParameter != null) {
      return await http.get(Uri.parse('$baseUrl/$endpoint/$queryParameter'));
    }
    return await http.get(Uri.parse('$baseUrl/$endpoint'));
  }
}
