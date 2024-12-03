import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_app_exmaples/practices/appBar_practice/pratice2_home.dart';

class AppBarHome extends StatelessWidget{
  late String appBarTitle;
  Widget? homePage;
  AppBarHome({required this.appBarTitle, this.homePage});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$appBarTitle')
      ),
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  child: const Text('AppBar Home', style: TextStyle(
                    fontSize: 35,
                    color: Colors.purple
                  ))
                ),
                SizedBox(height: 50),
                //adding button for going to next page
                Container(
                  alignment: Alignment.center,
                  height: 55,
                  child: ElevatedButton(
                    child:const Text('Next Page', style: TextStyle(
                      fontSize: 22,
                      color: Colors.white
                    )),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)
                        ),
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> Practice2Home()
                      ));
                    }
                  )
                )
              ]
            )
        )
      )
    );
  }
}