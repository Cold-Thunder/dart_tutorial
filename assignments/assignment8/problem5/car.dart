import 'engine.dart';

class Car{
    late String _brand;
    late String _model;
    late double _horsePower;
    late String _type;

    Car({required String brand, required String model, required double horsePower,
      required String type
    }):
        _brand = brand, _model = model, _horsePower = horsePower, _type = type;

    // using engine object as a property of a car
   late Engine engine = Engine(horsePower: _horsePower, type: _type);

   //show user details
   void showDetails(){
     print('Brand: $_brand');
     print('Model: $_model');
     engine.engineDetails();
   }


}