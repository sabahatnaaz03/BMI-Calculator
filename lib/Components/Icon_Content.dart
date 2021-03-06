import 'package:flutter/material.dart';
class IconContent extends StatelessWidget {
  IconContent({@required this.icon, this.lebal});
  final IconData icon;
  final String lebal;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          lebal,
          style: TextStyle(fontSize: 18.0, color: Color(0XFF8D8E98)),
        )
      ],
    );
  }
}