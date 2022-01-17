import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tabBarView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _tabBarViewState();
}

class _tabBarViewState extends State<tabBarView> {
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
