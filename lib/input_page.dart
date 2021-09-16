import 'package:flutter/material.dart';
import 'cardAndContainerTemplates.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);

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
                Expanded(child: MyContainer(
                  cardChild: GenderCard("Female", Icons.female),
                )),
                Expanded(child: MyContainer(
                  cardChild: GenderCard("Male", Icons.male_rounded),
                )),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: MyContainer(c: Colors.brown)),
                Expanded(child: MyContainer(c: Colors.blue)),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            color: Colors.pink,
            height: bottomContainerHeight,
            width: double.infinity, //expand to the sides
          )
        ],
      ),
      
    );
  }
}
