import 'package:flutter/material.dart';

void main() {
  runApp(
    // const MyApp(),
    const MyApp2(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'switch',
      home: Scaffold(
          body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              border: Border.all(
            color: _value == true ? Colors.green : Colors.red,
            width: 2,
          )),
          child: Switch(
            activeColor: Colors.green,
            activeTrackColor: Colors.green,
            inactiveTrackColor: Colors.blue,
            inactiveThumbColor: Colors.red,
            value: _value,
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
          ),
        ),
      )),
    );
  }
}

class MyApp2 extends StatefulWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  bool _value2 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'switchlisttile',
      home: Scaffold(
        body: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                border: Border.all(
              color: _value2 == true ? Colors.blue : Colors.red,
            )),
            child: SwitchListTile(
              value: _value2,
              onChanged: (value) {
                setState(() {
                  _value2 = value;
                });
              },
              activeColor: Colors.blue,
              title: Text("Title"),
              subtitle: Text("Subtitle"),
              secondary: Icon(_value2 == true
                  ? Icons.airplanemode_active
                  : Icons.airplanemode_inactive),
              selected: _value2,
            ),
          ),
        ),
      ),
    );
  }
}
