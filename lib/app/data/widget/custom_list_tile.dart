import 'package:ecom_frontend/app/modules/home/model/product.dart';
import 'package:flutter/material.dart';

class CartProductTile extends StatelessWidget {
  const CartProductTile({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(product.title ?? 'title'),
          leading: Image.network(
            product.image ?? '',
            errorBuilder: (context, error, stackTrace) => Image.asset(
              'assets/place_holder.jpeg',
              height: 100,
              width: 100,
            ),
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}
