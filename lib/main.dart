import 'package:flutter/material.dart';
import 'MyHomePage.dart';
import 'note/app_body.dart';

// void main() => runApp(const MyApp());
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 建立appTitle物件
    var appTitle = Text('Yagoo App');

    // 建立appBody物件
    var appBody = AppBody();

    // 建立app物件
    var app = MaterialApp(
      home: MyHomePage(),
    );

    return app;
  }
}
