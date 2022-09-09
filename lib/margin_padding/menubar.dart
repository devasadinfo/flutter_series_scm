import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            color: Colors.orange,
            height: 60,
            width: double.infinity,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.home,
                    color: Colors.blue,
                  ),
                  VerticalDivider(
                    thickness: 1,
                    color: Colors.black,
                    // indent: 5,
                    // endIndent: 5,
                  ),
                  Icon(
                    Icons.add_box_outlined,
                    color: Colors.blue,
                  ),
                  VerticalDivider(
                    thickness: 1,
                    color: Colors.black,
                    // indent: 5,
                    // endIndent: 5,
                  ),
                  Icon(
                    Icons.image,
                    color: Colors.blue,
                  ),
                  VerticalDivider(
                    thickness: 1,
                    color: Colors.black,
                    // indent: 5,
                    // endIndent: 5,
                  ),
                  Icon(
                    Icons.location_city,
                    color: Colors.blue,
                  ),
                  VerticalDivider(
                    thickness: 1,
                    color: Colors.black,
                    // indent: 5,
                    // endIndent: 5,
                  ),
                  Icon(
                    Icons.contact_page,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
