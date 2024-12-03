import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MaterialAppExample extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App', style: TextStyle(
          fontSize: 24,
          color: Colors.white
        )),
        // backgroundColor: Colors.purple
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: const Text('Material App', style: TextStyle(
                  fontSize: 35,
                  color: Colors.purple,
                ),
                )
              ),
              Container(
                child: const Text(
                  'Routes example of flutter Material App',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.blue
                  )
                )
              ),
              Container(
                height: 55,
                child: ElevatedButton(
                  // using route name except className
                  onPressed: (){
                    Navigator.pushNamed(context, '/material_2nd_example');
                  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  child: const Text('Example 2', style: TextStyle(
                    fontSize: 24,
                    color: Colors.white
                  ))
                )
              )
            ]
          )
        )
      )
    );
  }
}