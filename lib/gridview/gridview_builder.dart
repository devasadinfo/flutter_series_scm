import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GridViewbuilder extends StatefulWidget {
  const GridViewbuilder({Key? key}) : super(key: key);

  @override
  State<GridViewbuilder> createState() => _GridViewbuilderState();
}

class _GridViewbuilderState extends State<GridViewbuilder> {
  List<int> list = [];
  @override
  void initState() {
    for (int i = 0; i <= 50; i++) {
      list.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("GridView.Buider"),
        backgroundColor: Colors.orange,
      ),
      body: GridView.builder(
        itemCount: list.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              color: Colors.orange,
              child: Text(
                "${list[index]}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
