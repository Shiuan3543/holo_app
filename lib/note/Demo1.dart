import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yagoowatch_demo/widget/MyAnimatedSize.dart';

class Demo1 extends StatefulWidget {
  const Demo1({Key? key}) : super(key: key);

  @override
  _Demo1State createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  var _zoom = true; // private

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                _zoom = !_zoom;
              });
            },
            child: Text(
              'Button',
            ),
          ),
          MyAnimatedSize(
            sizeFactor: _zoom ? 1 : 0,
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
        ],
      ),
    );
  }
}
