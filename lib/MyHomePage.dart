import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final drawer = Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.blue, //This will change the drawer background to blue.
          //other styles
        ),
        child: Drawer(
      child: ListView(
        children: <Widget>[
          new Container(
            child: DrawerHeader(
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Hololive_Production_logo.svg/250px-Hololive_Production_logo.svg.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://img.moegirl.org.cn/common/thumb/d/da/Motoaki_Tanigo.jpg/280px-Motoaki_Tanigo.jpg'),
                      radius: 60.0,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Best Girl',
                      style: TextStyle(
                          color: Colors.amberAccent,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Colors.black,
                          fontSize: 30.0),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight + Alignment(0, .6),
                    child: Text(
                      'Yagoo',
                      style: TextStyle(color: Colors.red, fontSize: 20.0),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight + Alignment(0, .1),
                    child: Text(
                      '谷鄉元昭',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight + Alignment(0, .9),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'Hololove CEO',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),color: Colors.white,
          ),
          ListTile(
              title: Text(
                'ホロライブ',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Fluttertoast.showToast(
                    msg: 'ホロライブ',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.black,
                    textColor: Colors.white);
                Navigator.pop(context);
              }),
          ListTile(
              title: Text(
                'ホロスターズ',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Fluttertoast.showToast(
                    msg: 'ホロスターズ',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.black,
                    textColor: Colors.white);
                Navigator.pop(context);
              }),
          ListTile(
              title: Text(
                'ホロライブインドネシア',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Fluttertoast.showToast(
                    msg: 'ホロライブインドネシア',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.black,
                    textColor: Colors.white);
                Navigator.pop(context);
              }),
          ListTile(
              title: Text(
                'ホロライブEnglish',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Fluttertoast.showToast(
                    msg: 'ホロライブEnglish',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.black,
                    textColor: Colors.white);
                Navigator.pop(context);
              }),
          ListTile(
              title: Text(
                'イノナカミュージック',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Fluttertoast.showToast(
                    msg: 'イノナカミュージック',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.black,
                    textColor: Colors.white);
                Navigator.pop(context);
              }),
          ListTile(
              title: Text(
                '卒業',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Fluttertoast.showToast(
                    msg: '卒業',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.black,
                    textColor: Colors.white);
                Navigator.pop(context);
              }),
        ],
      ),
    ),
    );

    // 建立AppBar
    final appBar = AppBar(
      title: Text('YagooWatch'),
    );

    // 結合AppBar和App操作畫面
    final page = Scaffold(
      appBar: appBar,
      drawer: drawer,
    );

    return page;
  }
}
