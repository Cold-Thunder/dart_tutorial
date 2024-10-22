///The Logical Operators are used to evaluate the expressions
///and make the decision.
///
/// Logical Operators:
///  && (Logical AND)
///  || (Logical OR)
///  ! (Logical NOT)

void main() {
  bool data1 = false;
  bool data2 = false;

  //using (&&) Logical AND
  bool newData = data1 == true && data2 == true;
  print(newData); //output: false

  //using (||) Lgical OR
  bool newData2 = data1 == true || data2 == true;
  print(newData2); //output: true

  //using (!=)Logical NOT
  if (data1 != true) {
    print(data1); //output: false
  }
}
