import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:spartan_auth/auth/firebase_auths.dart';
import 'package:spartan_auth/widgets/button.dart';

import '../widgets/textfield.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome To\n    the SignIn",
            style: TextStyle(
              color: Colors.blueAccent.shade400,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 40),

          SpartanTextField(labelText: "Email", controller: _emailController),
          SizedBox(height: 25),
          SpartanTextField(
            labelText: "Password",
            controller: _passwordController,
          ),
          SpartanButton(
            label: "Sign In",
            onTap: () async {
              User? user = await signIn(
                _emailController.text,
                _passwordController.text,
              );
              if (user != null) {
                print("Sign Up Successful");
              } else {
                print("Sign Up Failed");
              }
            },
          ),
        ],
      ),
    );
  }
}
