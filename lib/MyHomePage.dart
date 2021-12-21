import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'MyAnimatedSize.dart';

class MyHomePage extends StatefulWidget {
  int groupupperlimitNumber = 6;
  int generationupperlimitNumber = 7;
  int enddrawerstateNumber = 2;
  @override
  State<MyHomePage> createState() => _MyHomePageState(
      groupupperlimitNumber, generationupperlimitNumber, enddrawerstateNumber);
}

class _MyHomePageState extends State<MyHomePage> {
  late int groupupperlimitNumber;
  late int generationupperlimitNumber;
  late int enddrawerstateNumber;
  _MyHomePageState(
      groupupperlimitNumber, generationupperlimitNumber, enddrawerstateNumber) {
    this.groupupperlimitNumber = groupupperlimitNumber;
    this.generationupperlimitNumber = generationupperlimitNumber;
    this.enddrawerstateNumber = enddrawerstateNumber;
  }
  late var _groupZoom = List.filled(this.groupupperlimitNumber, false);
  late var _generationZoom =
      List.filled(this.generationupperlimitNumber, false);
  late var _enddrawerstate = List.filled(this.enddrawerstateNumber, true);
  //var _zoom = true;
  @override
  Widget build(BuildContext context) {
    final drawer = Theme(
      data: Theme.of(context).copyWith(
        canvasColor:
            Colors.blue, //This will change the drawer background to blue.
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
    var youtubeImglight = Image.network(
        'https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/YouTube_social_white_circle_%282017%29.svg/480px-YouTube_social_white_circle_%282017%29.svg.png',
        fit: BoxFit.cover);
    var twitterImglight = Image.network(
        'https://upload.wikimedia.org/wikipedia/zh/thumb/9/9f/Twitter_bird_logo_2012.svg/180px-Twitter_bird_logo_2012.svg.png');
    final enddrawer = Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
              title: Text(
                'Youtube',
                style: TextStyle(fontSize: 20),
              ),
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 44,
                  minHeight: 44,
                  maxWidth: 44,
                  maxHeight: 44,
                ),
                child: youtubeImglight,
              ),
              onTap: () {
                if (_enddrawerstate[0] == true) {
                  Fluttertoast.showToast(
                      msg: 'Youtube',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.black,
                      textColor: Colors.white);
                  //Navigator.pop(context);
                }
                setState(() {
                  if (_enddrawerstate[0] == true) {
                    _enddrawerstate =
                        List.filled(this.enddrawerstateNumber, true);
                    _enddrawerstate[0] = !_enddrawerstate[0];
                  }
                });
              }),
          ListTile(
              title: Text(
                'Twitter',
                style: TextStyle(fontSize: 20),
              ),
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 44,
                  minHeight: 44,
                  maxWidth: 44,
                  maxHeight: 44,
                ),
                child: twitterImglight,
              ),
              onTap: () {
                if (_enddrawerstate[1] == true) {
                  Fluttertoast.showToast(
                      msg: 'Twitter',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.black,
                      textColor: Colors.white);
                  //Navigator.pop(context);
                }
                setState(() {
                  if (_enddrawerstate[1] == true) {
                    _enddrawerstate =
                        List.filled(this.enddrawerstateNumber, true);
                    _enddrawerstate[1] = !_enddrawerstate[1];
                  }
                });
              }),
        ],
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
      endDrawer: enddrawer,
    );

    return page;
  }
}
