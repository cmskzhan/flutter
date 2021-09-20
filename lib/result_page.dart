import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI Calculation Result"),),
      body: Expanded(child: Center(child: Text("your result")),),
      
    );
  }
}