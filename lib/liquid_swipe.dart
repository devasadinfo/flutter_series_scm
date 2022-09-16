import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(pages: [
        Container(
          color: Colors.orange,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Color.fromARGB(173, 26, 93, 110),
        ),
        Container(
          color: Color.fromARGB(255, 174, 0, 255),
        ),
      ]),
    );
  }
}
