///variable declaring with var and dynamic
///
///
/// var = type is fixed at complie time.
///       can't change type.
///
/// dynamic = it provides more flexibility
///           can store different type data

void main() {
  var name = 'Hemal';
  // name = 10; // int value can't be assign.
  print(name);

  dynamic fullName = 'Mohammad Hemal';
  fullName = 10; //different type data can be assign
  fullName = {"firstName": "Mohammad", "lastName": "Hemal"};
  print(fullName);
}
