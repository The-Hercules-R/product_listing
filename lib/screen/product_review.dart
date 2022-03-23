import 'package:flutter/material.dart';

class ProductReview extends StatelessWidget {
  const ProductReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Text(
          'Product Review',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 100),
        Image.network(
            'https://www.powerreviews.com/wp-content/uploads/2017/02/Screen-Shot-2017-02-24-at-10.09.10-AM.png'),
      ],
    );
  }
}
