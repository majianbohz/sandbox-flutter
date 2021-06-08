import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main() {
  runApp(ChangeNotifierProvider(
    create: (_) => Counter(1),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Provider",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: <Widget>[
          FlatButton(
            child: Text("下一页"),
            onPressed: () =>
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SecondPage();
                })),
          ),
        ],
      ),
      body: Center(
        //child: Text("${Provider.of<Counter>(context).count}"),
        //child: Text(context.read<Counter>().count.toString()),
        child: Text(context.watch<Counter>().count.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Provider.of<Counter>(context).add();
          context.read<Counter>().add();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(":-)"),
      ),
      body: Center(
        //child: Text(context.watch<Counter>().count.toString()),
        child: Text(context.read<Counter>().count.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Provider.of<Counter>(context).add();
          context.read<Counter>().add();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class Counter with ChangeNotifier {

  int _count;

  Counter(this._count);

  void add() {
    _count++;
    notifyListeners();
  }

  get count => _count;
}
