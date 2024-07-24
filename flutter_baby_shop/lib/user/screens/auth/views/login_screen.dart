import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shop/admin/pages/HomePage/HomePage.dart';
import 'package:shop/user/screens/home/views/home_screen.dart';
import 'signup_screen.dart'; // Import sign up screen

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            children: [
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  CollectionReference user =
                      FirebaseFirestore.instance.collection('UserCollection');
                  QuerySnapshot querySnapshot = await user
                      .where('email', isEqualTo: emailController.text)
                      .where('password', isEqualTo: passwordController.text)
                      .get();

                  if (querySnapshot.docs.isNotEmpty) {
                    var userDoc = querySnapshot.docs.first;
                    String role = userDoc['role'];
                    String userId = userDoc.id;

                    if (role == 'admin') {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    }
                     else if (role == 'user') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreen()),
                      );
                    }
                  }

                  // try {
                  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
                  //     email: emailController.text,
                  //     password: passwordController.text,
                  //   );
                  //   // Navigate to home or another screen
                  // } catch (e) {
                  //   // Handle error
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //     SnackBar(content: Text('Login failed: ${e.toString()}')),
                  //   );
                  // }
                },
                child: const Text('Login'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpScreen()),
                  );
                },
                child: const Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
