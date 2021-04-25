import 'package:flutter/material.dart';
import '../Components/Constant.dart';
import '../Components/Resuseable_Card.dart';
import '../Components/Bottom_button.dart';

class ResultPage extends StatelessWidget {
  final String bmiRes;
  final String bmiText;
  final String bmiInterpretation;
  ResultPage({@required this.bmiRes,this.bmiInterpretation,this.bmiText});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTlebalText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard1(
              colour: kactiveColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiText,
                    style: kRlebalText,
                  ),
                  Text(
                    bmiRes,
                    style: kBVlebalText,
                  ),
                  Text(
                    bmiInterpretation,
                    style: kElebalText,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            textTitle: 'RE-CALCULATED',
          ),
        ],
      ),
    );
  }
}
