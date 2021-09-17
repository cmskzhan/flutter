import 'package:flutter/material.dart';
import 'cardAndContainerTemplates.dart';

// might move below const to templates?
const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Colors.pink;
int initialTall = 180;
enum gender {male, female}

const labelTextStyle =  TextStyle(fontSize: 18, color: Colors.white30);

const boldNumberStyle = TextStyle(fontSize: 60, color: Colors.white, fontWeight: FontWeight.w900);


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
                Expanded(child: MyContainer(
                  onPress: () {setState(() {
                    tappedGender=gender.female;
                    print("female pressed");
                  });},
                  c: tappedGender == gender.female ? activeCardColor : inactiveCardColor,
                  cardChild: GenderCard("Female", Icons.female),
                )),
                Expanded(child: MyContainer(
                  onPress: () {setState(() {
                    tappedGender=gender.male;
                    print("pressed male");
                  });},
                  c: tappedGender == gender.male ? activeCardColor : inactiveCardColor,
                  cardChild: GenderCard("Male", Icons.male_rounded),
                )),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              c: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("tall", style: labelTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic, //bring unit down as subscriber
                    children: [
                      Text(initialTall.toString(), style: boldNumberStyle),
                      Text('cm', style: labelTextStyle,)
                    ],
                  ),
                  Slider(value: initialTall.toDouble(), min: 80, max: 240, activeColor: Colors.pink, inactiveColor: Colors.grey,
                         onChanged: (double newTall) { setState(() { initialTall = newTall.floor(); print(newTall); });
                    } ) ],
              ),),
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
