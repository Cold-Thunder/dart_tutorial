import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidgetsUse extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Widgets', style: TextStyle(
          fontSize: 22,
          color: Colors.white,
        )),
        backgroundColor: Colors.cyan
      ),
      body: SafeArea(child: Container(
        child: Column(
          children: [
            // using elevated button
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                  onPressed: (){
                    print('This is elevated button');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                    backgroundColor: Colors.purple
                  ),
                  child: const Text('Elevated Button', style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ))
              )
            ),
            //Floating action button
            Container(
              child: FloatingActionButton.extended(
                onPressed: (){
                  print('floating action button');
                },
                  backgroundColor: Colors.cyan,
                label: const Text('Floating button', style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ))
              )
            ),
            //using iconButton
            Container(
              child: IconButton(
                onPressed: (){
                  print('This is a icon button');
                },
                icon: const Icon(Icons.add, size: 40, color: Colors.red),
              )
            ),
            // using inkwell button
            InkWell(
              onTap: (){
                print('Inkwell using');
              },
              child: Container(
                alignment: Alignment.center,
                width: 250,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.black38,
                      offset: Offset(1,1),
                      spreadRadius: 3,
                      blurRadius: 10,
                    )
                  ]
                ) ,
                child: const Text('This is inkwell button', style: TextStyle(
                  fontSize: 26,
                  color: Colors.white
                ),
                textAlign: TextAlign.center
                )
              )
            ),
            // Popup manu
            Container(
              child: PopupMenuButton(
                  onSelected: (value){
                    print(value);
                  },
                  itemBuilder:(BuildContext context){
                return [
                  PopupMenuItem(
                    value: 'item1',
                    child: const Text('item1', style: TextStyle(
                      fontSize: 22,
                      color: Colors.black
                    ))
                  ),
                  PopupMenuItem(
                    value: 'item2',
                    child: const Text('Item2', style: TextStyle(
                      fontSize: 22,
                      color:Colors.black
                    ))
                  ),
                  PopupMenuItem(
                    value: 'item3',
                    child: const Text('item3', style: TextStyle(
                      fontSize: 22,
                      color: Colors.black
                    ))
                  )
                ];
              })
            )
          ]
        )
      ))
    );
  }
}