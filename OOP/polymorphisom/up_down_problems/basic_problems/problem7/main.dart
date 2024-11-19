// Problem 7: Gaming System
// Scenario:
// Create a base class Player with subclasses Warrior and Mage. Each subclass should have its unique behavior:
//
// Warrior should have a method attack() that prints "Warrior is attacking."
// Mage should have a method castSpell() that prints "Mage is casting a spell."
// Problem Requirements:
//
// Create a function playGame(Player player) that takes an upcast Player object as input.
// Use downcasting to call the specific method (attack or castSpell) based on the object type.


import 'mage.dart';
import 'player.dart';
import 'warrior.dart';

void main(){
  playGame(Warrior());
  playGame(Mage());
}

void playGame(Player player){
  if(player is Warrior){
    Warrior warrior = player as Warrior;
    warrior.attack();
  }else{
    Mage mage = player as Mage;
    mage.castSpell();
  }
}