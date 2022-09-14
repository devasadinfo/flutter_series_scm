import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MasudApp());
}

class MasudApp extends StatelessWidget {
  const MasudApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Buttons",
      debugShowCheckedModeBanner: false,
      home: ButtonsAll(),
    );
  }
}

class ButtonsAll extends StatelessWidget {
  const ButtonsAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          child: const Center(child: Text("Drawer")),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("All Buttons"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              // child: Icon(Icons.home),
              child: const Text("Button"),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,

                ///text color
                primary: Colors.orange, //bg color
                // elevation: 60, //shadow color elevation
                // shadowColor: Colors.red,
                // shape: CircleBorder(),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: const BorderSide(color: Colors.red),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 100,
              child: TextButton(
                onPressed: () {},
                child: const Text("TextButton"),
                style: TextButton.styleFrom(
                    primary: Colors.red,
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        side: BorderSide(
                          color: Colors.purple,
                          width: 5,
                        ))),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.phone),
              label: const Text("Phone"),
            ),
            SizedBox(
              height: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
