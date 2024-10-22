///Conditional Operators
///
///Conditional Operators are as same as (if-else) statement
///
///Ternary Operator:
/// syntax-1:
///   condition ? exp1: exp2;
/// syntax-2:
///   exp1 ?? exp2 // if exp1 is not null return exp1 value or return exp2 value

void main() {
  int num = 10;

  //ternary operators

  //syntax-1
  num % 2 == 0 ? print('true') : print("false"); //output: true

  String? firstName = null;
  String defaultName = 'Hemal';

  int? num1 = 100000;
  int num2 = 10;

  //syntax-2
  // String name = firstName ?? defaultName; //output: Hemal
  int num3 = num1 ?? num2;

  print(num3);
}
