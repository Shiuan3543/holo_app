import 'package:flutter/material.dart';
import 'package:holo_app/widgets/tab.dart';

class Bar extends StatefulWidget {
  // Bar({Key? key}) : super(key: key);
  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> {
  _BarState();
  @override
  Widget build(BuildContext context) {
    var tabs = [
      Container(
        // child: const WebView(
        //   initialUrl: 'https://www.youtube.com/',
        // ),
        child: Text(
          'Youtuber',
          style: TextStyle(fontSize: 30),
        ),
        alignment: Alignment.center,
        color: Colors.black12,
      ),
      Container(
        // child: const WebView(
        //   initialUrl: 'https://twitter.com/home',
        // ),
        child: Text(
          'Twitter',
          style: TextStyle(fontSize: 30),
        ),
        alignment: Alignment.center,
      ),
    ];
    var bar = AppBar(
      title: Text('ICU', style: TextStyle(color: Colors.red)),
      bottom: TabBar(
        tabs: tabs,
      ),
    );
    return bar;
  }
}
