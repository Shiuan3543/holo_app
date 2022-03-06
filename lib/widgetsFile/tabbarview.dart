import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TabarView extends StatefulWidget {
  TabarView(this.children);

  final List<Widget> children;

  @override
  State<StatefulWidget> createState() => _TabarViewState();
}

class _TabarViewState extends State<TabarView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final tabBarView = TabBarView(
      children: widget.children,
    );
    return tabBarView;
  }
}
