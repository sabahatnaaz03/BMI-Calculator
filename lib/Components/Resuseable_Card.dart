import 'package:flutter/material.dart';
class ReusableCard1 extends StatelessWidget {
  ReusableCard1({@required this.colour, this.childCard,this.onPressed});
  final Color colour;
  final Widget childCard;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ,
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: childCard,

        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}