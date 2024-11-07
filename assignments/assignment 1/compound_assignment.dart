
void main(){
  double score = 50;
  // adding number
  print(add(score)); //output: 60.0

  // substracting number
  print(substract(score)); //output: 45.0

  //multiple
  print(multiple(score)); //output: 100.0

  // divide
  print(divide(score)); //output: 12.5

  //modulus
  print(modulus(score)); //output: 2
}

// adding
add(score){
  return score += 10;
}

//substracting number
substract(score){
  return score -= 5;
}

//multiplication
multiple(score){
  return score *= 2;
}

//divide
divide(score){
  return score /= 4;
}

//modulus
modulus(score){
  return score %= 6;
}