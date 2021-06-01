import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:j0329/loginpage.dart';
import 'page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "...",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  var pages = [
    MyPage("首页"),
    MyPage("发现"),
    MyPage("动态"),
    MyPage("我的")
  ];

  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {print("===> Floating Action Button");},
        child: Icon(Icons.play_arrow),
        backgroundColor: Colors.lightGreen,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,

      body: pages[currentIndex],

      bottomNavigationBar:  BottomAppBar(
//悬浮按钮 与其他菜单栏的结合方式
        shape: CircularNotchedRectangle(),
// FloatingActionButton和BottomAppBar 之间的差距
        notchMargin: 6.0,
        color: Colors.white,
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget> [
            buildBotomItem(currentIndex, 0, Icons.home, "首页"),
        buildBotomItem(currentIndex, 1, Icons.library_music, "发现"),
        buildBotomItem(currentIndex, -1, null, "发现"),
        buildBotomItem(currentIndex, 2, Icons.email, "消息"),
        buildBotomItem(currentIndex, 3, Icons.person, "我的"),
        ],
      ),
    ),
    );
  }

  buildBotomItem(int selectIndex, int index, IconData iconData, String title) {
  //未选中状态的样式
    TextStyle textStyle = TextStyle(fontSize: 12.0,color: Colors.grey);
    MaterialColor iconColor = Colors.grey;
    double iconSize=20;
    EdgeInsetsGeometry padding = EdgeInsets.only(top: 8.0);
    if(selectIndex==index){
  //选中状态的文字样式
      textStyle = TextStyle(fontSize: 13.0,color: Colors.blue);
  //选中状态的按钮样式
      iconColor = Colors.blue;
      iconSize=25;
      padding = EdgeInsets.only(top: 6.0);
    }

    Widget padItem = SizedBox();
    if (iconData != null) {
      padItem = Padding(
        padding: padding,
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: <Widget> [
              Icon(
              iconData,
              color: iconColor,
              size: iconSize,
            ),
            Text(
              title,
              style: textStyle,
            )
            ],
          ),
        ),
      ),
    );
    }

    Widget item = Expanded(
      flex: 1,
      child: new GestureDetector(
      onTap: () {
        print("index:$index  currentIndex:$currentIndex");
        if (index != currentIndex) {
          setState(() {
            currentIndex = index;
          });
        }
      },
      child: SizedBox(
          height: 53,  //52
          child: padItem,
        ),
      ),
    );

    return item;
  }
}

