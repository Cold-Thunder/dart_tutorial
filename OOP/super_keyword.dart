// super is a keyword which is mainly used to refer
// to call parent class properties and methods.
/// 1.Accessing super class Methods and Properties:
///         The super keyword can be used within a subclass to call
///         a method or access a property of the superclass.
///         example: super.sound()
///
/// 2. Calling super class constructor:
///         super class can also be used to call a superclass's constructor from a sub-class
///         example:
///                 super(name);
///
/// 3. Use super in initializer list:
///         The super keyword can be used in initializer lists to pass values
///         to the superclass before the subclass constructor body executes.
///         example: super(name);
///
///
///

void main(){
  Dog dog1 = Dog();
  dog1.sound();
}

class Animal{
  void sound(){
    print('Animal makes sounds');
  }
}

class Dog extends Animal{
  @override
  void sound(){
    super.sound();
    print('Dog darks');
  }
}


