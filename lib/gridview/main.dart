import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'gridview_builder.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'GridView All show',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GridViewbuilder(),
      ),
    );
  }
}
