import 'dart:math';

class BmiBrain{
BmiBrain({this.height,this.weight});
  final int height;
  final int weight;
  double bmiResult;
  String bmiCal(){
    bmiResult=weight/pow(height/100, 2);
    return bmiResult.toStringAsFixed(1);
  }
String bmResult(){
    if(bmiResult>25)
      return 'Overweight';
    else if(bmiResult>18)
      return 'Normal';
    else
      return 'UnderWeight';

}
String interpretation(){
  if(bmiResult>25)
    return ' Try to exercise more !! You have higher weight than the Normal weight.';
  else if(bmiResult>18)
    return 'Awesome!! You have normal weight.';
  else
    return 'Take Care of yourSelf. You have lower than Normal weight';
}

}