import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 7;
  final String name = "Prateek";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyFirstApp"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of Flutter by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
