import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return'OverWeight';
    }
      else if(_bmi > 18.5){
        return 'Normal';
    }
      else if(_bmi >16.5 ){
        return'UnderWeight';
    }
      else{
        return'Death Mode';
    }
  }
  String getInterpretation() {
    if (_bmi >= 25) {
      return'We need to watch your weight. Better still do some exercise';
    }
      else if(_bmi > 18.5){
        return 'We body seem fine. your health is in a good condition keep it up';
    }
      else if(_bmi > 16.5 ){
        return'We need eat more, your body seem to be in a bad shape,';
    }
      else{
        return'you will soon die okay, keep on fasting';
    }
  }
}
