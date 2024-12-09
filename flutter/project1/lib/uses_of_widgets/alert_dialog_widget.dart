
import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget{
  const AlertDialogWidget({super.key});

  showingAlertView(BuildContext context){
    return showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: const Text('This is Alert Dialog!', style: TextStyle(
            fontSize: 22,
            color: Colors.blue
          )),
          actions: [
            TextButton(
              child: const Text('Ok', style: TextStyle(
          fontSize: 22,
                color: Colors.red
        )),
              onPressed: (){
                print('Ok');
                Navigator.pop(context);
              }
            )
          ]
        );
      }
    );
  }

  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
        title: const Text(
          'Alert Dialog Use',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white
          )
        ),
      ),
      body:SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: width,
              child: const Text('AlertDialog Widget use', style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
              )
            ),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                child: const Text(
                  'Normal AlertShow',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  )
                ),
                onPressed: (){
                  showingAlertView(context);
                }
              )
            )
          ]
        )
      )
    );
  }
}