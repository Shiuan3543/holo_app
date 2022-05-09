import 'package:flutter/material.dart';
import 'package:holo_app/widgets/drawer.dart';

class HeadShot extends SgeDrawer {
  HeadShot({Key? key}) : super(key: key);
  @override
  // ignore: no_logic_in_create_state
  State<HeadShot> createState() => _HeadShot();
}

class _HeadShot extends State<HeadShot> {
  @override
  Widget build(BuildContext context) {
    final drawer_header = Container(
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
                '¨¦?¤¸¬L',
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
    );
    return drawer_header;
  }
}
