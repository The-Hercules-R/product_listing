import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key, @PathParam('productId') this.productId})
      : super(key: key);
  final int? productId;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Text(
          'Product Detail ',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Product ID: $productId ',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.router.pushNamed('product-info');
              },
              child: const Text(
                'Product Info',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                context.router.pushNamed('product-review');
              },
              child: const Text(
                'Product Review',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
        const Expanded(
          child: AutoRouter(),
        ),
      ],
    );
  }
}
