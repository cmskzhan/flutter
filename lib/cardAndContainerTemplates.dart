import 'package:flutter/material.dart';

const activeCardColor = Color(0xFF1D1E33);




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
  
  MyContainer({this.c: activeCardColor, this.cardChild, this.onPress});
  final Color c;  // difference: const calculated before compilation. final is after. Both are immutable
  final Widget? cardChild; // seems only when it's positional, you can use?
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: c),
        margin: EdgeInsets.all(10),
      ),
    );
  }
}

void afunction(){}