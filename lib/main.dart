import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  //create play sound function
  void playAsound(int tonation) {
                final player = AudioCache();
                player.play('note$tonation.wav');
  }

  final List<Color> colors = [Colors.orangeAccent, Colors.red, Colors.blue, Colors.black, Colors.yellow, Colors.grey, Colors.green];

  //function to use in UI
  Expanded buildKeyboard({Color bgcolor = Colors.black, int wavefile = 1}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.amberAccent,
          backgroundColor: bgcolor,
        ),
        onPressed: () {
          playAsound(wavefile);
      }, child: Text('press me'),),
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
              for (int i = 0; i < 7; i++) buildKeyboard(wavefile: i + 1, bgcolor: colors[i]), // no curly brackets {}, otherwise, it becomes Set
              TextButton(
                 style: TextButton.styleFrom(
                  primary: Colors.blue
                ),
                onPressed: () {
                final player = AudioCache();
                player.play('note4.wav');
              }, child: Text('No loop no function, pure button!'),)
            ],
          ),
        ),
      ),
    );
  }
}
