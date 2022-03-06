import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TabarView extends StatefulWidget {
  //get children => 2;
  //get children => TabBarView.children.length;
  @override
  State<StatefulWidget> createState() => _TabarViewState();
}

class _TabarViewState extends State<TabarView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final tabBarView = TabBarView(
      children: [
        Container(
          child: const WebView(
            initialUrl: 'https://www.youtube.com/',
          ),
          // child: Text(
          //   'Youtuber',
          //   style: TextStyle(fontSize: 30),
          // ),
          alignment: Alignment.center,
          color: Colors.black12,
        ),
        Container(
          child: const WebView(
            initialUrl: 'https://twitter.com/home',
          ),
          // child: Text(
          //   'Twitter',
          //   style: TextStyle(fontSize: 30),
          // ),
          // alignment: Alignment.center,
        ),
      ],
    );
    return tabBarView;
  }
}
