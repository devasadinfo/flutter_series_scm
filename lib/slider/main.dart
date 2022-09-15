

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _slidecount = 0.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'slider',
      home: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Range is: $_slidecount"),
              Slider(
                value: _slidecount,
                min: 0.0,
                max: 10.0,
                divisions: 5,
                onChanged: (value) {
                  setState(() {
                    _slidecount = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
