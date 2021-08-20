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
            child: Container(
              color: Colors.white,
              child: Text("body -> child's \n 2nd line"),
              height: 100,
              width: 150,
              margin: EdgeInsets.only(left:100), // how much away from Center
              padding: EdgeInsets.all(20), // text position inside the safearea
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
