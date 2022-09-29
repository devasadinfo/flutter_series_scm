// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text(
          "Login Successfull✔",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
