import 'package:flutter/material.dart';

class MyTab {
  List<Container> my_tabs = [
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
}
