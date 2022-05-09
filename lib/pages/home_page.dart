import 'package:flutter/material.dart';
import 'package:holo_app/widgets/drawer.dart';
import 'package:holo_app/widgets/tabbar.dart';
import 'package:holo_app/widgets/youtube_player.dart';
import 'package:holo_app/widgets/tab.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home-page';

  static MaterialPageRoute route() {
    return MaterialPageRoute(
      builder: (context) => HomePage(),
    );
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // var tabs = [
    //   Container(
    //     // child: const WebView(
    //     //   initialUrl: 'https://www.youtube.com/',
    //     // ),
    //     child: Text(
    //       'Youtuber',
    //       style: TextStyle(fontSize: 30),
    //     ),
    //     alignment: Alignment.center,
    //     color: Colors.black12,
    //   ),
    //   Container(
    //     // child: const WebView(
    //     //   initialUrl: 'https://twitter.com/home',
    //     // ),
    //     child: Text(
    //       'Twitter',
    //       style: TextStyle(fontSize: 30),
    //     ),
    //     alignment: Alignment.center,
    //   ),
    // ];
    var tabs = MyTab();
    final theme = Theme.of(context);
    return DefaultTabController(
        length: tabs.my_tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('ICU', style: TextStyle(color: Colors.red)),
            bottom: TabBar(
              tabs: tabs.my_tabs,
            ),
          ),
          // appBar: TabBar(
          //   tabs: tabs,
          // ),
          drawer: SgeDrawer(),
          body: TabbarViewer(),
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Text(
          //         'Need knowlege about the components?',
          //         style: theme.textTheme.headline5,
          //       ),
          //       const SizedBox(height: 32.0),
          //       Text(
          //         'Open the style guide from the menu.',
          //         style: theme.textTheme.headline5,
          //       )
          //     ],
          //   ),
          // ),
        ));
  }
}
