import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
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
            child: Text(
              "Where am I?",
              textDirection: TextDirection.rtl,
            ),
          ),
          floatingActionButton: FloatingActionButton(
            tooltip: 'Add',
            child: Icon(Icons.add_a_photo),
            onPressed: () { print("Pressed");}, // this only update in debug console
          ),
        ),
      ),
    );
