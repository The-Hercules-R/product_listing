import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Text(
          'Product Info',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 100),
        Image.network(
            'https://cdn.shopify.com/s/files/1/0070/7032/files/product_description_example.png?format=jpg&quality=90&v=1632951686'),
      ],
    );
  }
}
