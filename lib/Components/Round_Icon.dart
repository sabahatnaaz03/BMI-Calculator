import 'package:flutter/material.dart';
class RoundIconShap extends StatelessWidget {
  RoundIconShap({this.icon, this.onPresse});
  final IconData icon;
  final Function onPresse;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPresse,
      child: Icon(icon),
      elevation: 6.0,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
