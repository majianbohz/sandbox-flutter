import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  String _title;
  MyPage(this._title);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(widget._title)),
    );
  }
}
