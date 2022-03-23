import 'package:flutter/material.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 20),
        Text(
          'My Order',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
        ),
        SizedBox(height: 100),
        Text(
          'Iphone 13 pro max',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Iphone 12 pro max',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
