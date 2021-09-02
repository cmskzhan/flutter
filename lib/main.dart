import 'package:flutter/material.dart';
import 'screens/myCard.dart';

<<<<<<< HEAD
void main() => runApp(MyApp());

=======
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var diceNumber1 = 1;
    return Row(
      children: [
        Expanded(flex: 2, child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset('images/dice$diceNumber1.png'),
        )),
        Expanded(  // use Expanded to fix png to screen
            flex: 2, // twice as large as 2nd one
            child: FlatButton(
              onPressed: (){
                print("button dice3 pressed");
              },
              child: Image.asset('images/dice3.png')),
            )
    ],);
  }
}
>>>>>>> ab69e0dc0338544a23183887f20e8a7f7bb2b90c
