import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:product_listing_hw/routes/app_router.gr.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Text(
          'Home',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 70),
        ElevatedButton(
          onPressed: () {
            context.pushRoute(ProductDetail(productId: 13));
          },
          child: const Text(
            'Iphone 13 pro max',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(height: 40),
        ElevatedButton(
          onPressed: () {
            context.router.push(ProductDetail(productId: 12));
          },
          child: const Text(
            'Iphone 12 pro max',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
