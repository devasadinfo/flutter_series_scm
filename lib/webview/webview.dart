import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   title: const Text('Secret Lover'),
        // ),
        body: WebView(
          initialUrl: "https://www.facebook.com/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
