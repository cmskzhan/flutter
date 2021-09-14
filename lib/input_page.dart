import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: myContainer()),
                Expanded(child: myContainer()),
              ],
            ),
          ),
          Expanded(
            child: myContainer(),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: myContainer()),
                Expanded(child: myContainer()),
              ],
            ),
          ),
        ],
      ),
      
    );
  }
}

class myContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black26),
      margin: EdgeInsets.all(10),
    );
  }
}
