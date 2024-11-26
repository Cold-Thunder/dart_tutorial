import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //here we are using scaffold
    return Scaffold(
      // adding appbar
      appBar: AppBar(
        title: const Text('Scaffold use',
            style: TextStyle(fontSize: 24, color: Colors.white)),
        backgroundColor: Colors.purple,
        elevation: 3,
        iconTheme:const IconThemeData(color: Colors.white),
      ),
      // adding floating action button
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Adding');
          },
          backgroundColor: Colors.purple,
          child: Container(
            child: const Icon(Icons.add, size: 24, color: Colors.white),
          )),

      // using drawer
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              const DrawerHeader(
                // padding: EdgeInsets.only(top: 20, left: 15),
                decoration: BoxDecoration(
                  color: Colors.purple
                ),
                child: Text('Flutter Drawer Header', style: TextStyle(
                  fontSize: 24,
                  color:Colors.white
                ))
              ),
              ListTile(
                onTap: (){
                  print('This is home page');
                  Navigator.pop(context,
                    MaterialPageRoute(builder: (context)=> ScaffoldUse())
                  );
                },
                leading: const Icon(Icons.home_filled, color: Colors.grey),
                title: const Text('Home', style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold
                ))
              )
            ]
          )
        ),
      //adding body
      persistentFooterButtons: <Widget>[
        ElevatedButton(
          onPressed: (){
            print('add');
          },
          child: Icon(Icons.add, size: 22, color: Colors.white)
        ),
      ],
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 10, right: 5),
          child: const Text('This is scaffold practice for flutter app', style: TextStyle(
            fontSize:25,
            color: Colors.black
          ))
        )
      )
    );
  }
}
