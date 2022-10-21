// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatelessWidget {
  const WebView(
      {super.key,
      required String initialUrl,
      required JavascriptMode javascriptMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WebView"),
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: "https://www.facebook.com/",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
