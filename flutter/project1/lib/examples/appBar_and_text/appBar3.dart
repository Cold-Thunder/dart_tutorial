import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBar3 extends StatefulWidget{
  @override
  State<AppBar3> createState()=> _AppBar3State();
}

class _AppBar3State extends State<AppBar3>{
  bool _searching = false;
  TextEditingController _searchingCont = TextEditingController();
  String updatedData = '';
  int count = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar3',style: TextStyle(
          fontSize: 26,
          color:Colors.white,
          shadows: [
            Shadow(
              color: Colors.black38,
              offset: Offset(1,1),
              blurRadius: 3
            )
          ]
        ),
        ),
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
        ),
        actions: [
          IconButton(
            icon: Icon(_searching ? Icons.close : Icons.search, size: 28, color: Colors.white),
            onPressed:(){
               setState((){
                 _searching = !_searching;
                 _searchingCont.clear();
                 updatedData = '';
               });
            }
          )
        ],
      ),
        floatingActionButton: FloatingActionButton(
          heroTag: 'add',
          splashColor: Colors.redAccent,
          onPressed: (){
              setState((){
                count += 1;
              });
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Colors.purple,
          child: const Icon(Icons.add, size: 24, color: Colors.white)
        ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
                _searching ? Container(
                  margin:const EdgeInsets.only(top:10),
                  height: 50,
                  // using textField
                  child: TextField(
                    controller: _searchingCont,
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: Colors.green,
                    cursorHeight: 30,
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.green
                    ),
                    onChanged: (value){
                      setState((){
                        updatedData = value;
                      });
                    },
                    decoration: InputDecoration(
                        hintText: 'Search here...',
                        hintStyle: const TextStyle(
                          fontSize: 22,
                          color: Colors.grey
                        ),
                      suffixIcon: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape:const  RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10)
                                  ),
                                )
                            ),
                            child: const Icon(Icons.search, size: 28, color: Colors.white),
                            onPressed: (){
                              print('${_searchingCont.text.toString()}');
                            }
                        )
                      )
                      ,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: const BorderSide(
                          width: 2,
                          color: Colors.green
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: const BorderSide(
                          width: 2,
                          color: Colors.green
                        )
                      )
                    )
                  )
                ) : SizedBox(height: 60),

              const SizedBox(height: 30),
              Container(
                alignment: Alignment.center,
                child: const Text('Input data below:', style: TextStyle(
                  fontSize: 22,
                  color: Colors.green
                ))
              ),
              const SizedBox(height: 24),
              Container(
                height: 100,
                child: Text('$updatedData', style: const TextStyle(
                  fontSize: 25, color: Colors.red
                ),
                  overflow: TextOverflow.fade,
                )
              ),
              const SizedBox(height: 40),
              Container(
                child: Text('$count', style: const TextStyle(
                  fontSize: 50, color: Colors.redAccent,
                  fontWeight: FontWeight.bold
                ))
              ),
              const SizedBox(height: 30),
              Container(
                child: FloatingActionButton(
                  heroTag: 'remove',
                  splashColor: Colors.blue,
                  child: Icon(Icons.remove, size: 24, color: Colors.white),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(15)
                    )
                  ),
                  backgroundColor: Colors.red,
                  onPressed:(){
                      if(count > 0){
                        setState((){
                          count -= 1;
                        });
                      }
                  },
                )
              )
            ]
          )
        )
      )
    );
  }
}