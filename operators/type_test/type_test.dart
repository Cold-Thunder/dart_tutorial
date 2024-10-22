/// Type test is used for checking variable type
///
/// types of Type tests.
///
/// as = it is used for typecast
/// is = returns true if types are same
/// is! = returns true if types are not same

void main() {
  int number = 10;

  print(number is int); // checking type same

  print(number is! int); // checking type isn't same

  Object obj = 'String';
  String newString = obj as String;
  print(newString is String);
}
