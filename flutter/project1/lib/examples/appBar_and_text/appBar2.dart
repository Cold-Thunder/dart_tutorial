import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBar2 extends StatefulWidget{
  @override
  State<AppBar2> createState()=> _AppBar2State();
}

class _AppBar2State extends State<AppBar2>{
  String dropDownItem = 'Text1';
  int count = 0;

  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'AppBar2',
            style: TextStyle(fontSize: 24, color: Colors.white,
              // using shadow on text
              shadows: [
                Shadow(
                  offset: Offset(1,1),
                  color:Colors.black38,
                  blurRadius: 3
                )
              ]
            ),
        ),
        backgroundColor: Colors.blue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15)
          ),
        ),
        centerTitle: true,
        // iconTheme: const IconThemeData(
        //   color: Colors.white,
        // )
        actions: [
          DropdownButton(
            value: dropDownItem,
            style: const TextStyle(fontSize: 22, color: Colors.white), //changing text style
            dropdownColor: Colors.blue, //changing dropdown color
              underline: SizedBox(),
            iconEnabledColor: Colors.white,
            onChanged: (val){
              setState((){
                dropDownItem = val!;
              });
            },
            items: [
              DropdownMenuItem(
                  child: Text('Text1'),
                value: 'Text1'
              ),
              DropdownMenuItem(
                  child: Text('Text2'),
                value: 'Text2'
              ),
              DropdownMenuItem(
                child: Text('Text3'),
                value: 'Text3'
              ),
              DropdownMenuItem(
                child: Text('Text4'),
                value: 'Text4'
              ),
              DropdownMenuItem(
                child: Text('Text5'),
                value: 'Text5'
              )
            ]
          ),
          PopupMenuButton(
            iconColor: Colors.white,
            iconSize: 26,
            itemBuilder: (BuildContext context){
              return [
                PopupMenuItem(
                  value: '+',
                    onTap: (){
                    setState((){
                      count += 1;
                    });
                    },
                    textStyle: const TextStyle(fontSize: 22, color: Colors.blue),
                    child: const Text('+ Add', style: TextStyle(
                      fontSize: 22,
                      color: Colors.blue
                    ))
                ),
                PopupMenuItem(
                    value: '-',
                    onTap: (){
                      setState((){
                        if(count > 0){
                          count -= 1;
                        }
                      });
                    },
                    child: const Text('- Remove', style:TextStyle(
                        fontSize: 22,
                        color: Colors.blue
                    ))
                )
              ];
            },
          )
        ]
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.lightGreenAccent,
                height: 100,
                child: const Text('Counting Numbers', style: TextStyle(
                  fontSize: 35,
                  color: Colors.blue
                ))
              ),
              SizedBox(height: 30),
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(40)
                ),
                child: Text('$count', style: const TextStyle(
                  fontSize: 40,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold
                ))
              ),
              SizedBox(height: 30),
              Container(
                alignment: Alignment.center,
                height: 100,
                width: width,
                color: Colors.lightGreenAccent,
                child: RichText( //using richText for using different style
                  text: TextSpan(
                    text: 'Selected Item: ',
                    style: const TextStyle(
                      fontSize: 28,
                      color: Colors.purple,
                    ),
                    children: [
                      TextSpan(
                        text: '$dropDownItem',
                        style: const TextStyle(
                          fontSize: 45,
                          color: Colors.pinkAccent
                        )
                      )
                    ]
                  )
                )
              )
            ]
          )
        )
      )
    );
  }
}