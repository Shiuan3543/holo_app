import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BottomNaviBar extends StatefulWidget {
  var naviItemIcon = [
    Icon(Icons.timer),
    Icon(Icons.live_tv),
    Icon(Icons.exit_to_app),
  ];

  var naviItemText = ['clock', 'live', 'Exit'];

  int selectedIndex = 1;

  @override
  State<StatefulWidget> createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  @override
  Widget build(BuildContext context) {
    final bottomNaviBarItems = <BottomNavigationBarItem>[];

    for (var i = 0; i < widget.naviItemIcon.length; i++) {
      bottomNaviBarItems.add(BottomNavigationBarItem(
        icon: widget.naviItemIcon[i],
        title: Text(widget.naviItemText[i]),
      ));
    }

    final w = BottomNavigationBar(
      items: bottomNaviBarItems,
      currentIndex: widget.selectedIndex,
      onTap: (index) {
        setState(() {
          widget.selectedIndex = index;
        });
        Fluttertoast.showToast(
            msg: '‘I¢${widget.naviItemText[index]}',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.black,
            textColor: Colors.white);
      },
    );

    return w;
  }
}
