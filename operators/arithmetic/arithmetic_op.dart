void main() {
  /// Arithmetic operators
  /// =>Addition (+)
  print(addition(5, 10));

  // => Subtraction (-)
  print(subtraction(10, 5));

  //=> divition (/)
  print(division(10, 5).toStringAsFixed(2));

  //=> multiplication (*)
  print(multiplication(10, 5));

  // => modulus (%)
  print(modulus(10, 3));
}

// adding two opperands (a and b) with (+) operator.
addition(int a, int b) {
  return a + b;
}

//subtracting operation between (a and b) with (-) operator
subtraction(int a, int b) {
  return a - b;
}

//division between (a and b) with (/) operator
double division(int a, int b) {
  return a / b;
}

//multiplication between (a and b) with (*) operator
double multiplication(double a, double b) {
  return a * b;
}

// % operator will return modulus
int modulus(int a, int b) {
  return a % b;
}
