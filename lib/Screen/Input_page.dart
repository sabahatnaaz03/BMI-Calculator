import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'file:///C:/Users/HOME/AndroidStudioProjects/bmicalculator/lib/Components/Resuseable_Card.dart';
import 'file:///C:/Users/HOME/AndroidStudioProjects/bmicalculator/lib/Components/Icon_Content.dart';
import '../Components/Constant.dart';
import 'package:bmicalculator/Screen/Result_Page.dart';
import 'package:bmicalculator/Components/Bottom_button.dart';
import 'package:bmicalculator/Components/Round_Icon.dart';
import 'package:bmicalculator/BMI_Brain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(children: [
              Expanded(
                child: ReusableCard1(
                  onPressed: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male
                      ? kactiveColor
                      : kinactiveColor,
                  childCard: IconContent(
                    icon: FontAwesomeIcons.mars,
                    lebal: 'Male',
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard1(
                  onPressed: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? kactiveColor
                      : kinactiveColor,
                  childCard: IconContent(
                    icon: FontAwesomeIcons.venus,
                    lebal: 'Female',
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            child: ReusableCard1(
                colour: kactiveColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: klebalText,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kblebalText,
                        ),
                        Text(
                          'cm',
                          style: klebalText,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 200,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                )),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: ReusableCard1(
                  colour: kactiveColor,
                  childCard: Column(
                    children: [
                      Text(
                        'Weight',
                        style: klebalText,
                      ),
                      Text(
                        weight.toString(),
                        style: kblebalText,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconShap(
                            icon: FontAwesomeIcons.plus,
                            onPresse: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconShap(
                            icon: FontAwesomeIcons.minus,
                            onPresse: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard1(
                  colour: kactiveColor,
                  childCard: Column(
                    children: [
                      Text(
                        'Age',
                        style: klebalText,
                      ),
                      Text(
                        age.toString(),
                        style: kblebalText,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconShap(
                            icon: FontAwesomeIcons.plus,
                            onPresse: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconShap(
                            icon: FontAwesomeIcons.minus,
                            onPresse: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
          BottomButton(
            onTap: () {
              BmiBrain cal=BmiBrain(height: height,weight: weight);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultPage(
                    bmiRes: cal.bmiCal(),
                    bmiInterpretation: cal.interpretation(),
                    bmiText: cal.bmResult(),
                  )));
            },
            textTitle: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
