/// ++ and -- is called Unary operator in dart.
///
/// ++ = Increament
/// -- = Decreament
///
/// ++x = pre increament [it increase value of operand]
/// x++ = post increament [it print actual value before increament]
///
/// --x = pre decreament [it decrease value of operand]
/// x-- = post decreament [it print actual value before decreament]

void main() {
  int x = 0;

  print("${++x} \n"); //pre increament
  print(x++); //post increament
  print(x);

  print(--x); //pre decreament
  print(x--); //post decreamnet
  print(x);
}
