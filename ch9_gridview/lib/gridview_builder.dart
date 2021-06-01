import 'package:flutter/material.dart';
import 'package:ch9_card/grid_icons.dart';


class GridViewBuilderWidget extends StatelessWidget {

  List<IconData> _iconList = GridIcons().getIconList();

  @override
  Widget build(BuildContext context) {

    
    return GridView.builder(
        itemCount: 40,
        padding: EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150.0),
        itemBuilder: itemBuilder);
  }
  
  Widget itemBuilder(BuildContext context, int index) {
    return Card(
      color: Colors.lightGreen.shade50,
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {print("row $index");},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _iconList[index%_iconList.length],
              size: 48.0,
                color: Colors.lightGreen,
            ),
            Divider(),
            Text(
              "index $index",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
              ),
            )
          ],
        ),
      ),
    );
  }
  
}


