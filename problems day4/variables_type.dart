void main() {
  double num1 = 10.0; //assigning fractional value with double (keyword)
  int num2 = 5; //assigning integer value with int(keyword)

  double add = num2 + num1; //adding to numbers

  // converting double to int and multipling
  int multi = num1.toInt() * num2;

  // printing addition and multiplication
  print("Addition: $add"); //output: 15.0
  print("Multiplication: $multi"); //output: 50
}
