// main page points to homepage, whcih is InputPage

import 'package:flutter/material.dart';
import 'loadingScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
      
    );
  }
}
