// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: Text(
        "Login Page",
        style: TextStyle(
            fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),
      )),
    );
  }
}
