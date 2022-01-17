import 'package:flutter/material.dart';
import 'package:yagoowatch_demo/yagoosmileImage_page.dart';
import 'home_page.dart';
import 'note/app_body.dart';

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
