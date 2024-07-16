import 'package:deshi_mart/providers/AuthProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../widgets/PrimaryButton.dart';

class AuthFields extends StatelessWidget {
  const AuthFields({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    ValueNotifier<bool> isHide = ValueNotifier<bool>(true);
    TextEditingController email = TextEditingController(text: "root@gmail.com");
    TextEditingController password = TextEditingController(text: "rootroot");
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        color: Theme.of(context).colorScheme.secondaryContainer,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome To Deshi Mart",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Get your grocery in as fast as one hours",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "EMAIL",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: email,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email is required";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  prefixIcon: Icon(
                    Icons.alternate_email,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "PASSWORD",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
              SizedBox(height: 10),
              ValueListenableBuilder(
                  valueListenable: isHide,
                  builder: (context, value, _) {
                    return TextFormField(
                      controller: password,
                      obscureText: isHide.value,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password is required";
                        } else if (value.length < 6) {
                          return "Password must be at least 6 characters long";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        prefixIcon: Icon(
                          Icons.lock_open,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                        suffixIcon: InkWell(
                          onTap: () {
                            isHide.value = !isHide.value;
                          },
                          child: isHide.value
                              ? Icon(
                                  Icons.visibility_off,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                )
                              : Icon(
                                  Icons.remove_red_eye,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                        ),
                      ),
                    );
                  }),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Forgot password ? ",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Consumer<AuthProvider>(builder: (context, value, _) {
                return value.isLoading
                    ? LinearProgressIndicator()
                    : PrimaryButton(
                        name: "LOGIN",
                        icon: Icons.lock,
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            authProvider.loginWithEmailPwd(
                                email.text, password.text, context);
                          }
                        },
                        color: Theme.of(context).colorScheme.primary,
                      );
              }),
            ],
          ),
        ));
  }
}
