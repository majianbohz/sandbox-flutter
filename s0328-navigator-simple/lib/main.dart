import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MainPage()));

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int curIndex = 0;
  var images = [Image.asset('images/99.jpg'), Image.asset('images/77.jpg')];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("组件"),
        backgroundColor: Colors.transparent, //透明化
      ),
      body: images[curIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(label:'11', icon: Icon(Icons.account_balance_wallet)),
          BottomNavigationBarItem(label:'22', icon: Icon(Icons.access_alarm))
        ],
        currentIndex: curIndex,
        onTap: (int selected) {
          print('$selected');
          curIndex = selected;
          setState(() {
            curIndex = selected;
          });
        },
      ),
    );
  }
}

