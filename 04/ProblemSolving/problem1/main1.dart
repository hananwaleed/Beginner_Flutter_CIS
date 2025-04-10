void main() {
  Calculator calc = Calculator();

  print("Sum =:${calc.sum(10, 5)}");
  print("sub :${calc.sub(10, 5)}");
  print("muli:${calc.muli(10, 5)}");
  print("div :${calc.div(10, 5)}");
  print("div:${calc.div(10, 0)}");
}

class Calculator {
  int? number1;
  int? number2;

  int sum(int number1, int number2) {
    int Result = number1 + number2;
    return Result;
  }

  int sub(int number1, int number2) {
    int Result = number1 - number2;
    return Result;
  }

  int muli(int number1, int number2) {
    int Result = number1 * number2;
    return Result;
  }

  double div(int number1, int number2) {
    if (number2 == 0) {
      print("Not Allowed Div by Zero,Try Again");
    }
    double Result = number1 / number2;

    return Result;
  }
}
