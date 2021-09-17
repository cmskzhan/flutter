import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTouch;
  final VoidCallback? onLongTouch;

  RoundIconButton({required this.icon, required this.onTouch, this.onLongTouch});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTouch,
      onLongPress: onLongTouch,
      child: Icon(icon),
      shape: CircleBorder(side: BorderSide(width: 2, color: Colors.yellow)),
      elevation: 1,
      highlightElevation: 4,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56
      ),
      
    );
  }
}