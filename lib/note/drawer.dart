/*import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'MyAnimatedSize.dart';
import 'home_page.dart';

class drawer extends State<HomePage>{
  
  Theme dartLeft(BuildContext context){
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor:
            Colors.grey[300], //This will change the drawer background to blue.
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
                        '谷?元昭',
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
              ),
              color: Colors.white,
            ),
            ListTile(
                title: Text(
                  'ホロライブ',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  setState(() {
                    if (_groupZoom[0] == false) {
                      _groupZoom = List.filled(6, false);
                      _generationZoom = List.filled(6, false);
                    }
                    _groupZoom[0] = !_groupZoom[0];
                  });
                  Fluttertoast.showToast(
                      msg: 'ホロライブ',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.black,
                      textColor: Colors.white);
                  //Navigator.pop(context);
                }),
            MyAnimatedSize(
              sizeFactor: _groupZoom[0] ? 1 : 0,
              duration: const Duration(
                milliseconds: 200,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                      title: Text(
                        '0期生',
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () {
                        setState(() {
                          if (_generationZoom[0] == false) {
                            _generationZoom = List.filled(6, false);
                          }
                          _generationZoom[0] = !_generationZoom[0];
                        });
                      }),
                  MyAnimatedSize(
                    sizeFactor: _generationZoom[0] ? 1 : 0,
                    duration: const Duration(
                      milliseconds: 200,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                            title: Text(
                              '1',
                              style: TextStyle(fontSize: 15),
                            ),
                            onTap: () {
                              setState(() {
                                Fluttertoast.showToast(
                                    msg: '1',
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    backgroundColor: Colors.black,
                                    textColor: Colors.white);
                                Navigator.pop(context);
                              });
                              _groupZoom = List.filled(6, false);
                              _generationZoom = List.filled(7, false);
                            }),
                      ],
                    ),
                  ),
                  ListTile(
                      title: Text(
                        '一期生',
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () {
                        setState(() {
                          if (_generationZoom[1] == false) {
                            _generationZoom = List.filled(6, false);
                          }
                          _generationZoom[1] = !_generationZoom[1];
                        });
                      }),
                  MyAnimatedSize(
                    sizeFactor: _generationZoom[1] ? 1 : 0,
                    duration: const Duration(
                      milliseconds: 200,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                            title: Text(
                              '1',
                              style: TextStyle(fontSize: 15),
                            ),
                            onTap: () {
                              setState(() {
                                Fluttertoast.showToast(
                                    msg: '1',
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    backgroundColor: Colors.black,
                                    textColor: Colors.white);
                                Navigator.pop(context);
                              });
                              _groupZoom = List.filled(6, false);
                              _generationZoom = List.filled(7, false);
                            }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
                title: Text(
                  'ホロスターズ',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  setState(() {
                    if (_groupZoom[1] == false) {
                      _groupZoom = List.filled(6, false);
                    }
                    _groupZoom[1] = !_groupZoom[1];
                  });
                }),
            MyAnimatedSize(
              sizeFactor: _groupZoom[1] ? 1 : 0,
              duration: const Duration(
                milliseconds: 200,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Hi',
                  ),
                  Text(
                    'Hi - 2',
                  ),
                ],
              ),
            ),
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
            ListTile(
                title: Text(
                  '',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Fluttertoast.showToast(
                      msg: '',
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
  }
}
