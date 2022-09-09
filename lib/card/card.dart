import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Card",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Card".toUpperCase()),
            centerTitle: true,
            actions: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.home,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          drawer: const Drawer(),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  color: Colors.blue,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                      topRight: Radius.circular(5),
                      topLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  elevation: 50,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    // color: Colors.blue,
                    height: 100,
                    width: 250,
                    child: const Text("Data Data Data Data Data"),
                  ),
                ),
              ],
            ),
          )),
    ),
  );
}
