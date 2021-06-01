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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.pink,
        foregroundColor: Colors.red,
        title: Text("app bar title"),
        leading: IconButton(icon: Icon(Icons.account_balance_outlined), onPressed: () {print("onPressed");},),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
        flexibleSpace: SafeArea(child: Icon( Icons.photo_camera, size: 50, color: Colors.white,)),
        bottom: PreferredSize(
          child: Container(
               alignment: Alignment.center,
               height: 75.0,
               child: TextButton (child: Text("Button"), onPressed: (){},),
               color: Colors.pink,
             ),
          preferredSize: Size.fromHeight(75.0),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(

            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/login.jpg"),
          )
        ),
        child: ListView(
          children: [
            Text('000'),Text('000'),Text('000'),Text('000'),Text('000'),Text('000'),
            Text('000'),Text('000'),Text('000'),Text('000'),Text('000'),Text('000'),
            Text('000'),Text('000'),Text('000'),Text('000'),Text('000'),Text('000'),
            Text('000'),Text('000'),Text('000'),Text('000'),Text('000'),Text('000'),
            Text('000'),Text('000'),Text('000'),Text('000'),Text('000'),Text('000'),
          ],
        ),
      ),
    );
  }
}

