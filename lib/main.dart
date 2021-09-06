import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  //create play sound function
  void playAsound(int tonation) {
                final player = AudioCache();
                player.play('note$tonation.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.amberAccent,
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  playAsound(1);
              }, child: Text('play me doe'),),
              TextButton(
                 style: TextButton.styleFrom(
                  primary: Colors.blue
                ),
                onPressed: () {
                final player = AudioCache();
                player.play('note2.wav');
              }, child: Text('play me ray'),)
            ],
          ),
        ),
      ),
    );
  }
}
