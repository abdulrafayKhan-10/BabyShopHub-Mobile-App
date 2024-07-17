import 'package:flutter/material.dart';
import 'package:shop/admin/pages/Auth/Widget/AuthFields.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              // height: 500,
              width: w / 2,
              child: const Row(
                children: [
                 
                  Expanded(child: AuthFields()),
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
