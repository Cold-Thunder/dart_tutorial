void main() {
  int a = 10;
  int b = 20;

  List<int> numbers = [a, b];
  a = numbers[1];
  b = numbers[0];
  print('a = $a');
  print('b = $b');
}
