import 'package:flutter/material.dart';

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

class GenderCard extends StatelessWidget {
  
  GenderCard(this.s, this.genderIcon);
  final String s;
  final IconData genderIcon;

  @override
  
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(genderIcon, size: 80, color: Colors.white,),
        SizedBox(height: 15,),
        Text(s, style: TextStyle(color: Colors.white60),)
      ],
    );
  }
}

class MyContainer extends StatelessWidget {
  
  MyContainer({this.c: activeCardColor, this.cardChild});
  final Color c;  // difference: const calculated before compilation. final is after. Both are immutable
  final Widget? cardChild; // seems only when it's positional, you can use?



  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: c),
      margin: EdgeInsets.all(10),
    );
  }
}
