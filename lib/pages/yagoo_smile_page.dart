import 'package:flutter/material.dart';
import 'home_page.dart';

class YagooSmilePage extends StatefulWidget {
  const YagooSmilePage({Key? key}) : super(key: key);
  static const routeName = '/yagoo-smile';

  static MaterialPageRoute route() {
    return MaterialPageRoute(
      builder: (context) => YagooSmilePage(),
    );
  }

  @override
  State<YagooSmilePage> createState() => _YagooSmilePageState();
}

class _YagooSmilePageState extends State<YagooSmilePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var yagoosmileImage = Center(
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
      home: yagoosmileImage,
    );
    return app;
  }
}
