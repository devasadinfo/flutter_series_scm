import 'package:demo_counter/margin_padding/menubar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Flutter Margin and Padding",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("asad"),
        ),
        body: const MenuBar(),
      ),
    ),
  );
}
