import 'package:ecom_frontend/app/modules/home/model/product.dart';
import 'package:get/get.dart';

class UserController extends GetxService {
  bool isUserLogedIn = false;

  List<Product> cartItems = [];
}
