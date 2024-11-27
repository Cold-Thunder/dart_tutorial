import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/custom_widgets/box_for_row.dart';

class RowColumn extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row & Column', style: TextStyle(
          fontSize: 22,
          color: Colors.white
        )),
        backgroundColor: Colors.orange,
      ),
      body: SafeArea(
        child: Container(
          // using column
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.purple
                ),
                height: 50,
                  child: const Text('Row & Column Practice', style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ))
              ),
              Container(
                padding:const EdgeInsets.only(top: 10, bottom: 10),
                // using row
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // custom widgets are calling
                      BoxForRow(),
                      BoxForRow(),
                      BoxForRow(),
                    ]
                ),
              )

            ]
          )
        )
      )
    );
  }
}