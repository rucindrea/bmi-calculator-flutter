import 'dart:math';

class BMICalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  BMICalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal BMI. You should try to lose some weight. ';
    } else if (_bmi >= 18.5) {
      return 'You have a normal BMI. Well done!';
    } else {
      return 'You have a lower than normal BMI. You should try to gain some weight.';
    }
  }
}
