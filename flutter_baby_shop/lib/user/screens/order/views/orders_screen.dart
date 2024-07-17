import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: const [
          Image(
            image: AssetImage("assets/screens/Orders.png"),
          ),
          Image(
            image: AssetImage("assets/screens/Cancel order - Select a reason.png"),
          ),
        ],
      );
  }
}
