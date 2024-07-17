import 'package:flutter/material.dart';

class PasswordRecoveryScreen extends StatelessWidget {
  const PasswordRecoveryScreen({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Password Recovery'),
      ),
      body: ListView(
        children: const [
          Image(
            image: AssetImage("assets/screens/Forgot_password.png"),
          ),
          Image(
            image: AssetImage("assets/screens/Forgot password 6.png"),
          ),
          Image(
            image: AssetImage("assets/screens/Enter verification code.png"),
          ),
          Image(
            image: AssetImage("assets/screens/Verificaition code.png"),
          ),
          Image(
            image: AssetImage("assets/screens/Reset password.png"),
          ),
        ],
      ),
    );
  }
}
