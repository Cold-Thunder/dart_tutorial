void main() {
  //checing is memeber or not
  bool isMember = true;
  //checking has discount or not
  bool hasDiscount = true;

  if (isMember == true && hasDiscount == true) {
    //checking both true or not
    print('Not Eligable');
  } else if (isMember == true || hasDiscount == true) {
    //checking one true or not
    print('Eligable');
  } else {
    //checking is not above of those
    print("Not Eligable");
  }
}
