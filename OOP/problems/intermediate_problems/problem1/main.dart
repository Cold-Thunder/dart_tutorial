// Problem 1: Hospital Management System
// Scenario:
// Design a class hierarchy for a hospital:
//
// Create a base class Person with private fields name and age.
// Create subclasses Doctor and Patient:
// Doctor should have a private field specialization and a method performCheckup() that prints the doctor's name and specialization.
// Patient should have a private field disease and a method describeCondition() that prints the patient's name and disease.
// Problem Requirements:
//
// Use encapsulation to ensure all fields are private and accessible through getters/setters.
// Create a function handlePerson(Person person):
// Upcast instances of Doctor and Patient to Person and pass them to this function.
// Use downcasting to call performCheckup for Doctor and describeCondition for Patient.
// Create a list of Person objects (a mix of Doctor and Patient) and process them using the handlePerson function.

import 'doctor.dart';
import 'patient.dart';
import 'person.dart';

void main(){
  handlePerson(Doctor(name: 'Hemal', age: 28, specialization: 'Kopakopi😜'));
  handlePerson(Patient(name: 'Mohammad Hemal', age: 22, disease: 'Stomach ache'));
}

void handlePerson(Person person){
    if(person is Doctor){
      person.performCheckup();
    }else if(person is Patient){
      person.describeCondition();
    }else{
      print('Not a valid person');
    }
}