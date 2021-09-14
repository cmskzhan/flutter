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
                Expanded(child: myContainer(c: Colors.brown)),
                Expanded(child: myContainer(c: Colors.blue)),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            color: Colors.pink,
            height: 80,
            width: double.infinity, //expand to the sides
          )
        ],
      ),
      
    );
  }
}

class myContainer extends StatelessWidget {
  
  myContainer({this.c: Colors.white});
  final Color c;  // difference: const calculated before compilation. final is after. Both are immutable


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: c),
      margin: EdgeInsets.all(10),
    );
  }
}
