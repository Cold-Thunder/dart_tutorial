///assignment operator is mainly used for assigning value in variables.
///
///there are some kinds of assignment operartors
///
///  = (Assignment Operator). assign Right to Left expression.
/// += (Add and Assign). adds Right and Left. Assign result to left Expression.
///     (a += b) == (a = a + b)
///
/// -= (Subtract and Assign). Subtract Right from Left. Assign result to left Expression.
///     (a -= b) == (a = a - b)
///
/// *= (multiply and Assign). Multiply Right and Left. Assign result to left Expression.
///     (a *= b) == (a = a * b)
///
/// /= (Divide and Assign). Divide Left with Right. Assign result to left Expression.
///     (a /= b) == (a = a / b)
///
/// %= (Mod and Assign). Find mod from Left with Right. Assign result to left Expression.
///     (a %= b) == (a = a % b)

void main() {
  double a = 11; // use of assignment operator ( = )
  int b = 5;

  a += b; // use of assignment operator( += )
  print(a); //16.0

  a -= b; // use of assignment operator ( -= )
  print(a); // 11.0

  a *= b; // use of assignment operator ( *= )
  print(a); // 55.0

  a /= b; // use of assignment operator ( /= )
  print(a); // 11.0

  a %= b; // use of assignment operator( %= )
  print(a); //1.0
}
