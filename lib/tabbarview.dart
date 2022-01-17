import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tabarView extends StatefulWidget {
  get children => 2;
  //get children => TabBarView.children.length;
  @override
  State<StatefulWidget> createState() => _tabarViewState();
}

class _tabarViewState extends State<tabarView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final tabBarView = TabBarView(
      children: [
        Container(
          child: Text(
            'Youtuber',
            style: TextStyle(fontSize: 30),
          ),
          alignment: Alignment.center,
          color: Colors.black12,
        ),
        Container(
          child: Text(
            'Twitter',
            style: TextStyle(fontSize: 30),
          ),
          alignment: Alignment.center,
        ),
      ],
    );
    return tabBarView;
  }
}
