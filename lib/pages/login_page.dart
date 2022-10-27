// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
                height: 300,
              ),
              SizedBox(
                // to give spacing between image and text
                height: 20,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter username", labelText: "Username"),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        }),
                    TextFormField(
                      obscureText: true, // to hide the password characters
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () async{
                  setState(() {
                    changeButton = !changeButton;
                  });
                  await Future.delayed(Duration(seconds: 1)) ;
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changeButton ? 60 : 150,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: changeButton
                          ? BorderRadius.circular(50)
                          : BorderRadius.circular(5)),
                  child: changeButton
                      ? Icon(Icons.done, color: Colors.white)
                      : Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                ),
              )
              // ElevatedButton(
              //     onPressed: () {
              //       // -> Callback
              //       Navigator.pushNamed(context, MyRoutes.homeRoute);
              //     },
              //     style: TextButton.styleFrom(minimumSize: Size(120, 40)),
              //     child: Text("Login", style: TextStyle(fontSize: 18))
              //   ),
            ],
          ),
        ));
  }
}
