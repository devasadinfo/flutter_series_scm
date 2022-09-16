import 'package:demo_counter/pageview/page_one.dart';
import 'package:demo_counter/pageview/page_three.dart';
import 'package:demo_counter/pageview/page_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageviewData extends StatefulWidget {
  const PageviewData({super.key});

  @override
  State<PageviewData> createState() => _PageviewDataState();
}

PageController _controller = PageController(
  initialPage: 0,
);

class _PageviewDataState extends State<PageviewData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: const [
          PageOne(),
          PageTwo(),
          PageThree(),
        ],
      ),
    );
  }
}
