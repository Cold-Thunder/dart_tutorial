/// Upcasting:
/// upcasting in polymorphism refers to treating a subclass object as
/// if it were an instance of its parent class or interface.
///
/// This allows access only to the properties and
/// methods defined in the parent class, promoting abstraction.
///
///
void main(){
  // here dog is treated as Animal during runtime.
  // but sound() method is invoked.
  Animal dog1 = Dog(); // upcasting
  dog1.sound();
}

class Animal{
  void sound(){
    print('Animals make sounds');
  }
}

class Dog extends Animal{
  @override
  void sound(){
    print('Dog burks');
  }
}