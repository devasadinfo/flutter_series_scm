import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    var pagewidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          color: Colors.blue,
          height: 500,
          width: pagewidth,
          child: Text("PageThree"),
        ),
      ),
    );
  }
}
