import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.redAccent,
          leading: const IconButton(
            onPressed: null,
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
          ),
        ),
        body: Center(
          child: SafeArea(
            child: Column( //Row
              verticalDirection: VerticalDirection.up,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, //containers distributed evenly on the screen
              children: [
                Container(width: 100, height: 100,color: Colors.white,child: Text("Container1"),),
                Container(width: double.infinity, height: 100,color: Colors.blue,child: Text("Container2"),),
                Container(width: double.infinity, height: 100,color: Colors.red,child: Text("Container3"),)
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Add',
          child: Icon(Icons.add_a_photo),
          onPressed: () {
            print("Pressed");
          }, // this only update in debug console
        ),
      ),
    );
  }
}
