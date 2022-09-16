import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var container_width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(30),
                  width: container_width,
                  color: Colors.orange,
                  child: Text("Container-1"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(30),
                  width: container_width,
                  color: Colors.green,
                  child: Text("Container-2"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 6,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(30),
                  width: container_width,
                  color: Colors.blue,
                  child: Text("Container-3"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
