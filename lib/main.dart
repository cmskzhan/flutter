import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.amberAccent,
          appBar: AppBar(
            title: Text('I Am Rich'),
            backgroundColor: Colors.redAccent,
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://i0.wp.com/flutteragency.com/wp-content/uploads/2020/10/iOS-Emulator.png"),
                fit: BoxFit.cover
              ),
            ),
            child: Center(
              child: Image(
                image: AssetImage('images/CaptureBBC.JPG'),
              ),
            ),
          ),
        ),
      ),
    );
