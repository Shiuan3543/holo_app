import 'package:flutter/material.dart';
import 'package:yagoowatch_demo/widgetsFile/Introduction_body.dart';
import 'package:yagoowatch_demo/yagoosmileImage_page.dart';
import 'package:yagoowatch_demo/home_page.dart';

// void main() => runApp(const MyApp());
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 建立app物件
    var app = MaterialApp(
      home: YagooSmileImagePage(),
      //home: HomePage(),
    );

    return app;
  }
}
