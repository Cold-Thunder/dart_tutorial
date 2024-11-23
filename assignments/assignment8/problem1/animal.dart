class Animal{
  late String name;
  late int age;

  Animal({required this.name, required this.age});

  void makeSound(){
    print('Animal sound');
  }
}