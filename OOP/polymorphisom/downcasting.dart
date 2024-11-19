/// Downcasting:
/// Downcasting in Dart refers to converting
/// a parent class reference back to a subclass type.
///
/// This allows access to the subclass-specific properties or methods.
///
/// Dart requires explicit casting for downcasting using the as keyword
///
/// is = far checking type
/// as = for performing downcast

void main(){
  Animal animal = Dog(); //upcasting

  if(animal is Dog){
    Dog dog = animal as Dog;
    dog.barks();
  }
}

class Animal{
  void sound(){
    print('Animal make sounds');
  }
}

class Dog extends Animal{
  void barks(){
    print('Dog barks');
  }
}