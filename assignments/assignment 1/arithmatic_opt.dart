import 'dart:io';

void main() {
  int a = 50; //input 50
  int b = 20; //input 20

  //sum
  print(sum(a, b)); //output: 70

  //difference
  print(difference(a, b)); //output: 30

  // product
  print(product(a, b)); //output: 1000

  //quotient
  print(quotient(a, b)); //output: 2.5

  // reminder
  print(reminder(a, b)); //output: 10
}

//addition equation
int sum(a, b) {
  return a + b;
}

//subtract equation
int difference(a, b) {
  return a - b;
}

// product eqution
int product(a, b) {
  return a * b;
}

// division equation
quotient(dividend, divisor) {
  if (divisor != 0) {
    return dividend / divisor;
  } else if (divisor == 0) {
    return ("Divisor can't be 0");
  }
}

// reminder equation
reminder(dividend, divisor) {
  if (divisor != 0) {
    return dividend % divisor;
  } else if (divisor == 0) {
    return "Divisor can't be 0";
  }
}
