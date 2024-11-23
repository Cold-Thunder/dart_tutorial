import 'animal.dart';
import 'cat.dart';
import 'dog.dart';

void main(){
  soundMaker(Dog(name: 'Dolly', age: 2));
}

void soundMaker(Animal animal){
  if(animal is Dog){
    animal.makeSound();
  }else if(animal is Cat){
    animal.makeSound();
  }else{
    print('Provide a valid animal');
  }
}