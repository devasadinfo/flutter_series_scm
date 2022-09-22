import 'package:flutter/material.dart';

class TextCupon extends StatefulWidget {
  const TextCupon({Key? key}) : super(key: key);

  @override
  State<TextCupon> createState() => _TextCuponState();
}

String data = '';
bool _secure = true;

class _TextCuponState extends State<TextCupon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("WELL COME TO DAFFODIL POLYTECHNIC "),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your 1st Name:',
                labelText: '1st Name',
                labelStyle: const TextStyle(
                  color: Colors.green,
                ),
                hintStyle: const TextStyle(
                  color: Colors.red,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: const Icon(Icons.account_circle_sharp),
                suffixIcon: IconButton(
                    icon: Icon(_secure ? Icons.remove_red_eye : Icons.home),
                    onPressed: () {
                      setState(() {
                        _secure = !_secure;
                      });
                    }),
                errorText: data.isEmpty ? 'empty' : null,
              ),
              keyboardType: TextInputType.number,
              obscureText: _secure,
              obscuringCharacter: '*',
              maxLength: 11,
              onChanged: (value) {
                data = value;
              },
              onSubmitted: (value) {
                setState(() {
                  data = value;
                });
              },
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text("Binzam"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
