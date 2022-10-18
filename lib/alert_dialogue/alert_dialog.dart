// ignore_for_file: prefer_const_constructors
//Alert Dialog Simple Way
//for routing system
import 'package:flutter/material.dart';

class AlertShet extends StatefulWidget {
  const AlertShet({super.key});

  @override
  State<AlertShet> createState() => _AlertDialogState();
}

class _AlertDialogState extends State<AlertShet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Hello"),
                    content: Text("Hello Developer"),
                    actions: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.send),
                      ),
                    ],
                  );
                });
          },
          child: Text("Send"),
        ),
      ),
    );
  }
}
