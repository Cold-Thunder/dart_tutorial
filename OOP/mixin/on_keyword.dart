/// sometimes we will use a mixin on a specific class
/// that time we will use on keyword for that.
///

void main(){
  Cow cow = Cow(age: 2, color: 'red');
  cow.showDetails();
}

class Animal{
   late int age;
   Animal({required this.age});

   void showDetails(){
     print('Age: $age');
   }
}

// mixin is only used by animal class extender
class Cow extends Animal{
  late String color;

  Cow({required int age, required this.color}):
      super(age: age);

  @override
  showDetails(){
    print('Color: $color');
    super.showDetails();
  }
}

// mixin canRun can only used by that class which will extends Animal class
mixin canRun on Animal{
  void run(){
    print('It is running');
  }
}