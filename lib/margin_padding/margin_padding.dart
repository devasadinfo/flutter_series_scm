import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarginPadding extends StatelessWidget {
  const MarginPadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: 200,
        color: Colors.blue,
        child: const Text(
          "Margin",
          style: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        // alignment: Alignment.topCenter,
        margin: EdgeInsets.all(20),
        // padding: EdgeInsets.all(20),
        // padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        padding: EdgeInsets.only(top: 20, left: 20),
      ),
    );
  }
}
