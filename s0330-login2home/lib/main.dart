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
      home: LoginPage(),
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
      appBar: AppBar(
        leading: null,
        automaticallyImplyLeading: false,
        title: Text(""),
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        reverse: false,
        //controller: _pageController,
        physics:BouncingScrollPhysics(),
        pageSnapping: true,
        onPageChanged: (index) {
          //监听事件
          print('index=====$index');
        },
        children: <Widget>[
          MyPage(
          ),
          Container(
            color: Colors.greenAccent,
            child: Text(
                '第2页',
                style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
          ),
          Container(
            color: Colors.deepOrange,
            child: Center(
              child: Text(
                '第3页',
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}

