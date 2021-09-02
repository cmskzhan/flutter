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
    return Row(children: [
      Expanded(  // use Expanded to fix png to screen
          flex: 2, // twice as large as 2nd one
          child: Image.asset('images/dice1.png'),
          ),
      Expanded(flex: 2, child: Image.asset('images/dice2.png'))
    ],);
  }
}
>>>>>>> ab69e0dc0338544a23183887f20e8a7f7bb2b90c
