/// Mixins are a way of reusing the code in multiple classes.
/// Mixins are declared by using the keyword mixin.
///
///
/// Rules For Mixin
///  => Mixin can’t be instantiated. You can’t create object of mixin.
///  => Use the mixin to share the code between multiple classes.
///  => Mixin has no constructor and cannot be extended.
///  => It is possible to use multiple mixins in a class.
///
/// syntax:
///  mixin mixin_name{
///     return_type method_name(){
///         //statements
///       }
///   }
///
void main(){
  Person person = Person();
  person.walk();

  Bird bird = Bird();
  bird.fly();
}

class Person with canWalk{

}

class Bird with canFly{
  // method is overriding here
  @override
  void fly(){
    super.fly(); //super is using for calling method from parent class
    print('Bird is flying');
  }
}

// declaring a mixin
mixin canWalk{
  void walk(){
    print('Walking');
  }

  void run(){
    print('Running');
  }
}

// declaring a mixin
mixin canFly{
  void fly(){
    print('Can fly');
  }
}
