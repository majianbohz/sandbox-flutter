import 'package:flutter/material.dart';
import 'about.dart';
import 'gratitude.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  String _howAreYou = "...";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator"),
        actions: [
            IconButton(icon: Icon(Icons.info_outline), onPressed: () => _openPageAbout(
              context: context,
              fullscreenDialog: true,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text("Grateful for : $_howAreYou", style: TextStyle(fontSize: 32.0),),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openPageGratitude(context: context, fullscreenDialog: false,),
        tooltip: 'About',
        child: Icon(Icons.sentiment_satisfied),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _openPageAbout({BuildContext context, bool fullscreenDialog = false}) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => About(),
          fullscreenDialog: fullscreenDialog),
    );
  }

  void _openPageGratitude({BuildContext context, bool fullscreenDialog = false}) async {
    final String _gratitudeResponse = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Gratitude(
              radioGroupValue : -1,
            ),
            fullscreenDialog: fullscreenDialog,
            maintainState: true,
        ),
      );
    _howAreYou = _gratitudeResponse ?? "";
    setState(() {

    });
  }

}
