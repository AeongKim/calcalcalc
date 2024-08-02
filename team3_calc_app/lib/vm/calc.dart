class Calc {
  late double num1Add;
  late double num2Add;

  Calc(double num1Add1, double num2Add2)
      : num1Add = num1Add1,
        num2Add = num2Add2;

  double addCalc() {
    double num1 = num1Add;
    double num2 = num2Add;
    double result = num1 + num2;
    return result;
  }

  double subCalc() {
    double num1 = num1Add;
    double num2 = num2Add;
    double result = num1 - num2;
    return result;
  }

  double mulCalc() {
    double num1 = num1Add;
    double num2 = num2Add;
    double result = num1 * num2;
    return result;
  }

  double divCalc() {
    double num1 = num1Add;
    double num2 = num2Add;
    double result = num1 / num2;
    return result;
  }
}
