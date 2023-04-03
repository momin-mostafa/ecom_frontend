import 'package:http/http.dart' as http;

class ApiResponse {
  dynamic error;
  http.Response? response;

  ApiResponse(this.error, this.response);

  factory ApiResponse.fromError(dynamic e) => ApiResponse(e, null);
  factory ApiResponse.withSuccess(http.Response response) =>
      ApiResponse(null, response);
}
