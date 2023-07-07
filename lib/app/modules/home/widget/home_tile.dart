import 'package:ecom_frontend/app/data/common/user_controller.dart';
import 'package:ecom_frontend/app/modules/home/model/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_color.dart';

class HomeTile extends StatelessWidget {
  const HomeTile({
    super.key,
    required this.product,
  });

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: const Color.fromARGB(174, 250, 249, 249),
      child: ListTile(
        leading: Stack(
          children: [
            Container(
              width: 100,
              height: 100,
              color: AppColor.accentColor,
            ),
            Card(
              child: Image.network(
                product?.image ?? '',
                // height: Get.height * .5,
                width: 92, // Get.width * ,
                // height: 250,
                errorBuilder: (context, error, stackTrace) => const SizedBox(
                  height: 10,
                  width: 10,
                  child: Placeholder(),
                ),
              ),
            ),
            Container(
              height: 20,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.yellow.withOpacity(0.8),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(5),
                ),
              ),
              child: const Center(
                child: Text('30%'),
              ),
            )
          ],
        ),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(product?.name ?? ''),
        ),
        subtitle: Card(
          color: AppColor.accentColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              product?.description ?? '',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        trailing: IconButton(
          icon: const Icon(
            Icons.add_shopping_cart_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            Get.find<UserController>().cartItems.add(product!);
            Get.showSnackbar(GetSnackBar(
              title: 'Item Added',
              message: '${product?.name} ',
            ));
          },
        ),
      ),
    );
  }
}
