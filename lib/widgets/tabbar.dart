import 'package:flutter/material.dart';
import 'package:holo_app/widgets/youtube_player.dart';

class TabbarViewer extends StatefulWidget {
  @override
  State<TabbarViewer> createState() => _TabbarViewerState();
}

class _TabbarViewerState extends State<TabbarViewer> {
  @override
  Widget build(BuildContext context) {
    var tabbar = TabBarView(
      children: [Youtube(), Youtube()],
    );
    return tabbar;
  }
}
