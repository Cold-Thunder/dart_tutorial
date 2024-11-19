///method overriding is a technique which cna create a method in child
///class with the same name as in the parent class
///
///
///
void main(){
  Dog dog1 = Dog();
  dog1.eat();
}


class Animal{
  void eat(){
    print('Animal eats');
  }
}

class Dog extends Animal{
  //method is overriding here
  @override
  void eat(){
    print('Dog eat');
  }
}