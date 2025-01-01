import 'package:flutter/material.dart';

class Methods{
  ///snack bar
  static void snackBarMethod(BuildContext context){
      final snack = SnackBar(
        width: 200,
        // margin: const EdgeInsets.symmetric(horizontal: 20),
          content:Text(
            'Helloee',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: 3),
        elevation: 10,
        action: SnackBarAction(
          label: 'Dismiss',
          textColor: Colors.white,
          onPressed:(){
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          }
        )
      );
      ScaffoldMessenger.of(context).showSnackBar(snack);
    }


}