import 'package:flutter/material.dart';
import 'cardAndContainerTemplates.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Colors.pink;
enum gender {male, female}

class InputPage extends StatefulWidget {


  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

gender? tappedGender;

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
                Expanded(child: GestureDetector(
                  onTap: () {setState(() { tappedGender = gender.female;}); },
                  child: MyContainer(
                    c: tappedGender == gender.female ? activeCardColor : inactiveCardColor,
                    cardChild: GenderCard("Female", Icons.female),
                  ),
                )),
                Expanded(child: GestureDetector(
                  onTap: () {setState(() { tappedGender = gender.male;});},
                  child: MyContainer(
                    c: tappedGender == gender.male ? activeCardColor : inactiveCardColor,
                    cardChild: GenderCard("Male", Icons.male_rounded),
                  ),
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
            color: bottomContainerColor,
            height: bottomContainerHeight,
            width: double.infinity, //expand to the sides
          )
        ],
      ),
      
    );
  }
}
