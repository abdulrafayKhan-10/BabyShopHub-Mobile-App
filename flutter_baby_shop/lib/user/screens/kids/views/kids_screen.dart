import 'package:flutter/material.dart';

class KidsScreen extends StatelessWidget {
  const KidsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Image(
            image: AssetImage("assets/screens/Kids.png"),
          ));
  }
}
