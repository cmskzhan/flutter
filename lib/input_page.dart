import 'package:flutter/material.dart';
import 'cardAndContainerTemplates.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Colors.pink;

class InputPage extends StatefulWidget {


  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  // if gender ==1 male clicked, gender ==2 female clicked
  void toggleColors(int gender){
    if (gender == 1) {
      maleCardColor = activeCardColor;
      femaleCardColor = inactiveCardColor;
      print("male clicked");
    } else if (gender == 2) {
      femaleCardColor = activeCardColor;
      maleCardColor = inactiveCardColor;
      print("female clicked");
    } else {
        maleCardColor = inactiveCardColor;
        femaleCardColor = inactiveCardColor;
        print("exception: toggleColors method encourter unknown parameter");
    }

  }

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
                  onTap: () {setState(() { toggleColors(2);}); },
                  child: MyContainer(
                    c: femaleCardColor,
                    cardChild: GenderCard("Female", Icons.female),
                  ),
                )),
                Expanded(child: GestureDetector(
                  onTap: () {setState(() {
                    toggleColors(1);
                  });},
                  child: MyContainer(
                    c: maleCardColor,
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
