import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'HomePage.dart';

class YagooSmileImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var yagoosmileimage = Center(
//      child: Image.asset('assets/flutter.png'),
        child: GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage())),
      // {
      //   Scaffold.of(context).showSnackBar(const SnackBar(
      //     content: Text('Image Pressed'),
      //   ));
      // },
      child: Image.network(
        'https://pbs.twimg.com/profile_images/1186979284319006720/gH6xdlYB_400x400.jpg',
        fit: BoxFit.fill,
      ),
    ));
    var app = MaterialApp(
      home: yagoosmileimage,
    );
    return app;
  }
}
