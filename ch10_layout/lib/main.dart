import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.black87),),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black54),
        brightness: Brightness.light,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: (){},),
        actions: [
          IconButton(icon: Icon(Icons.cloud_queue), onPressed: (){}),
        ],
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildJournalHeaderImage(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildJournalEntry(),
                  Divider(),
                  _buildJournalWeather(),
                  Divider(),
                  _buildJournalTags(),
                  Divider(),
                  _buildJournalFooterImages(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Image _buildJournalHeaderImage() {
    return Image(
      image: AssetImage("assets/images/deer.png"),
      fit: BoxFit.cover,
    );
  }

  Column _buildJournalEntry() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "我的生日",
          style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
        ),
        Divider(),
        Text(
          "It's going to be a great birthday. AAAAAAAAAAAA BBBBBBBBBBB CCCCCCCCCC We are goning out for dinner",
          style: TextStyle(color: Colors.black54),
        )
      ],
    );
  }

  Row _buildJournalWeather() {
     return Row(
       crossAxisAlignment: CrossAxisAlignment.start,
       mainAxisSize: MainAxisSize.max,
       children: [
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Icon(
               Icons.wb_sunny,
               color: Colors.orange,
             ),
           ],
         ),
         SizedBox(width: 16.0,),
         Expanded(
           child:
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(
                   "81° Clear",
                   style: TextStyle(color: Colors.deepOrange, fontSize: 20.0),
                 ),
                 Text(
                   "81°AAAAAAAAAAADDDDDDDDDDDDDDDDDDAAAAAAAAAAClear",
                   style: TextStyle(color: Colors.grey),
                 ),
               ],
             ),
          ),
        ],
     );
  }

  Wrap _buildJournalTags() {
     return Wrap(
        spacing: 8.0,
        children: List.generate(7, (index) {
          return Chip(
            label: Text("${index +1}", style: TextStyle(fontSize: 20.0),),
            avatar: Icon(
              Icons.card_giftcard,
              color: Colors.blue.shade300,
            ),
          );
        })

     );
  }

  Row _buildJournalFooterImages() {
     return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/gear.png"),
            radius: 40.0,
          ),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/birthcake.png"),
            radius: 40.0,
          ),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/monkey.png"),
            radius: 40.0,
          ),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.cake),
                  Icon(Icons.cake),
                  Icon(Icons.cake),
                  Icon(Icons.music_note),
                ],
              )
          )
        ],
     );
  }
}
