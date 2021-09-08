import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  //create play sound function
  void playAsound(int tonation) {
                final player = AudioCache();
                player.play('note$tonation.wav');
  }

  Expanded buildKeyboard({Color bgcolor = Colors.black, int wavefile = 1}) {
    return Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.amberAccent,
                    backgroundColor: bgcolor,
                  ),
                  onPressed: () {
                    playAsound(wavefile);
                }, child: Text('play me doe'),),
              );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKeyboard(),
              buildKeyboard( bgcolor: Colors.blueAccent, wavefile: 3), //note the parameter use : instead of = like python
              TextButton(
                 style: TextButton.styleFrom(
                  primary: Colors.blue
                ),
                onPressed: () {
                final player = AudioCache();
                player.play('note4.wav');
              }, child: Text('play me ray'),)
            ],
          ),
        ),
      ),
    );
  }
}
