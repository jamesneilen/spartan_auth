import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:spartan_auth/auth/firebase_auths.dart';
import 'package:spartan_auth/auth/signin.dart';

import '../widgets/button.dart';
import '../widgets/textfield.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Welcome To\n    the SignUp",

            style: TextStyle(
              color: Colors.blueAccent.shade400,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 40),
          SpartanTextField(labelText: "Name", controller: _nameController),
          SizedBox(height: 25),
          SpartanTextField(labelText: "Email", controller: _emailController),
          SizedBox(height: 25),
          SpartanTextField(
            labelText: "Password",
            controller: _passwordController,
          ),
          SizedBox(height: 40),

          SpartanButton(
            label: "Sign Up",
            onTap: () async {
              User? user = await signUp(
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
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignInPage()),
              );
            },
            child: Text("Already have an account? Sign In here"),
          ),
        ],
      ),
    );
  }
}
