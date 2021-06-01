import 'package:flutter/material.dart';
import 'package:ch9_card/gridview_builder.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
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
  int _counter = 0;
  int index = 2;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: GridViewBuilderWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  
  Widget listGenerator(int index) {
    print("buildGridView $index");
    
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.save, size: 48.0, color: Colors.pink,),
            Divider(),
            Text("Index $index", textAlign: TextAlign.center, style: TextStyle(fontSize: 16.0),)
          ],
        ),
      ),
    );
    
  }

  Widget itemBuilder(BuildContext context, int index) {
    return Card(
      elevation: 4.0,
      shadowColor: Colors.red,
      color: 0 == index%2 ? Colors.white : Colors.cyan,
      margin: EdgeInsets.all(3.0),
      shape: UnderlineInputBorder(),
      child: ListTile(
        leading: Icon(Icons.flight, size: 40,),
        title: Text("Airplane $index"),
        subtitle: Text("Very Cool"),
        trailing: Text("${index * 7}%"),
        onTap: () => print("Tapped on Row $index"),
      ),
    );
  }
}
/*
Card(
elevation: 8.0,
shadowColor: Colors.red,
color: Colors.white,
margin: EdgeInsets.all(6.0),
shape: StadiumBorder(),
child: ListTile(
leading: Icon(Icons.flight, size: 40,),
title: Text("Airplane $index"),
subtitle: Text("Very Cool"),
trailing: Text("${index * 7}%"),
onTap: () => print("Tapped on Row $index"),
),
),
*/
