import 'package:flutter/material.dart';
import 'package:bmicalculator/Components/Constant.dart';
class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap,@required this.textTitle});
  final Function onTap;
  final String textTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        child:Center(child: Text(textTitle,style: kClebalText,),),
        margin: kbottomContainermr,
        color: kbottomContainercr,
        height: kbottomContaineht,
        width: double.infinity,
      ),);
  }
}