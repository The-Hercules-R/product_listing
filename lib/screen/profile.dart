import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:product_listing_hw/routes/app_router.gr.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Text(
          'Profile',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 100),
        const Text(
          'User ABC',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            context.router.push(const SettingRouter());
          },
          child: const Text(
            'Go to setting',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
