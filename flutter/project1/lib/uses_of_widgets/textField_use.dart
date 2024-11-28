import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {

  @override
  _TextFieldState createState()=> _TextFieldState();
}

class _TextFieldState extends State<TextFieldWidget>{
  TextStyle style1 = const TextStyle(
      fontSize: 22,
      color: Colors.black
  );

  // controller of text
  TextEditingController nameCont = TextEditingController();
  bool canSee = false;

  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: AppBar(
        title: Text('TextField use', style: style1),
        backgroundColor: Colors.greenAccent
      ),
      body: SafeArea(child: Container(
        child: Column(
          children: [
            Container(
              width: width,
              height: 60,
              alignment: Alignment.center,
              child: Text(
                'Text field Practice',
                style: style1,
                textAlign: TextAlign.center
              )
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
              child: TextField(
                controller: nameCont,
                obscureText: canSee,
                obscuringCharacter: '*',
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person, size: 22, color: Colors.green),
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState((){
                            canSee = !canSee;
                        });
                      },
                      icon: Icon(canSee ? Icons.remove_red_eye:Icons.hide_source, size: 22, color: Colors.green),
                    ),
                    labelText: 'Name',
                  labelStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey
                  ),
                  hintText: 'Enter your name...',
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.green,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10)
                  )

                )
              )
            )
          ]
        )
      ))
    );
  }
}