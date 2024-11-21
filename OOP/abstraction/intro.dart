/// Concrete Class: We can create object of this type of class.
/// Abstract Class: We can't create object of this type of class.
///
/// abstract class is that class that can't be initialized.
/// It is used for defining behaviour of a class that can be inherited by other class.
/// abstract keyword is used for defining.
///
/// Syntax:
/// abstract class ClassName{
///       Method1(); ///abstract method
///       Method2();
///       Method3();
///       }
///
/// abstract methods are methods that declare without implementation
/// Abstract methods don't have body part.
///
///
///
/// Key Points To Remember
///  => You can’t create an object of an abstract class.
///  => It can have both abstract and non-abstract methods.
///  => It is used to define the behavior of a class that other classes can inherit.
///  => Abstract method only has a signature and no implementation.

void main(){
  Vehicles vehicles = Car(); //upcasting
  Car car = vehicles as Car;

  car.start();
}

// abstract class
abstract class Vehicles{
  //abstract methods
    start();
    stop();

    // Non abstract methods
    void stopped(){
      print('car has break');
}
}

class Car extends Vehicles{
  @override
  start(){
    print('Car has been started');
  }

  @override
  stop(){
    print('Car has been stopped');
  }
}