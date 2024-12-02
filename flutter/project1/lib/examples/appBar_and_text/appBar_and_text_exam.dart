import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/examples/appBar_and_text/appBar2.dart';
import 'package:project1/examples/appBar_and_text/appBar3.dart';

class AppBarAndTextExam extends StatefulWidget{
  @override
  State<AppBarAndTextExam> createState()=> _AppBarAndTextExam();
}

class _AppBarAndTextExam extends State<AppBarAndTextExam>{
  bool heading = false;
  int count = 0;

  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            setState((){
              heading = !heading;
            });
          },
          icon: Icon(heading == true ? Icons.close : Icons.menu, color: Colors.white, size: 28)
        ),
        title: const Text('AppBar1', style: TextStyle(
          fontSize: 24,
          color: Colors.white
        )),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
              onPressed: (){
                setState((){
                  if(count > 0){
                    count -= 1;
                  }
                });
              },
              icon: const Icon(Icons.remove, size: 28, color: Colors.white)
          ),
          IconButton(
            onPressed: (){
              setState((){
                count += 1;
              });
            },
            icon: const Icon(Icons.add, size: 28, color: Colors.white)
          ),
        ],
        elevation: 4,
        shadowColor: Colors.black38,
      ),
      body: SafeArea(
        child: Container(
          padding:const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width,
                child: Text(heading == true ? 'Menu bar is opened!' : 'Menu bar is closed!', style: TextStyle(
                  fontSize: 35,
                  color: heading == true ? Colors.green : Colors.red
                ),
                  textAlign: TextAlign.center,
                ),
              ),
              //counter show
              Container(
                child: RichText(
                  text: TextSpan(
                    text: 'Count: ',
                    style: const TextStyle(fontSize: 35, color: Colors.purple),
                    children: [
                      TextSpan(
                        text: '$count',
                        style: const TextStyle(
                            fontSize: 50,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              color: Colors.black38,
                              offset: Offset(1,2),
                              blurRadius: 3
                            )
                          ]
                        )
                      )
                    ]
                  )
                )
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // appBar2 navigator button
                  Container(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AppBar2()));
                      },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          backgroundColor: Colors.blue
                        ),
                      child: const Text('Go AppBar2', style: TextStyle(
                        fontSize: 22,
                        color: Colors.white
                      ))
                    )
                  ),
                  SizedBox(width: 20),
                  // appbar3 navigator button
                  Container(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> AppBar3()));
                      },
                      style: ElevatedButton.styleFrom(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        backgroundColor: Colors.green
                      ),
                      child: const Text('Go AppBar3', style: TextStyle(
                        fontSize: 22,
                        color: Colors.white
                      ))
                    )
                  )
                ]
              )
            ]
          )
        )
      )
    );
  }
}