// Problem 2: Gaming Characters
// Scenario:
// Design a class hierarchy for a game:
//
// Create a base class Character.
// Create subclasses Archer, Knight, and Wizard, each with a unique attack method:
// Archer has shootArrow().
// Knight has swingSword().
// Wizard has castSpell().
// Problem Requirements:
//
// Write a function performAction(Character character) that accepts an upcast Character object.
// Inside the function, determine the character type using type-checking (is) and call the correct method (e.g., shootArrow for Archer).
// Create a list of Character objects with mixed types (Archer, Knight, Wizard) and iterate through the list, calling the appropriate methods via downcasting.


import 'archer.dart';
import 'character.dart';
import 'knight.dart';
import 'wizard.dart';

void main(){
  List<Character> characters = [Archer(), Knight(), Wizard()];


  for(Character char in characters){
    performAction(char);
  }
}

void performAction(Character character){
  if(character is Archer){
    Archer archer = character as Archer;
    archer.shootArrow();
  }else if(character is Knight){
    Knight knight = character as Knight;
    knight.swingSword();
  }else{
    Wizard wizard = character as Wizard;
    wizard.castSpell();
  }
}