import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/custom_widgets/user.dart';

class FormWidgetUse extends StatefulWidget{
  @override
  _FormWidgetUseState createState()=> _FormWidgetUseState();
}

class _FormWidgetUseState extends State<FormWidgetUse>{
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameCont = TextEditingController();
  final TextEditingController _emailCont = TextEditingController();


  List<User> users = [];

  @override
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Form Widget',
          style: TextStyle(
            fontSize: 22,
            color: Colors.white
          )
        ),
        backgroundColor: Colors.blue
      ),
      body: SafeArea(child: Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: const Text('User Form', style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                shadows: [
                  Shadow(
                    color: Colors.blue,
                    offset: Offset(1,2),
                    blurRadius:3,
                  )
                ]
              ),
              )
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  //name input taker
                  TextFormField(
                          controller: _nameCont,
                          onChanged: (value){

                          },
                          validator: (value){
                            if(value!.isEmpty || value.length < 5){
                              return "Name can't be empty";
                            }else {
                              return null;
                            }
                          },
                          style: const TextStyle(
                              fontSize: 22,
                              color: Colors.blue
                          ),
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                              labelText: 'Name',
                              labelStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue
                              ),
                              hintText: 'Enter your name...',
                              hintStyle: const TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      width: 2,
                                      color: Colors.blue
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      width: 2,
                                      color: Colors.blue
                                  )
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      width: 2,
                                      color: Colors.red
                                  )
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      width:2,
                                      color: Colors.red
                                  )
                              )
                          )
                  ),
                  const SizedBox(height: 20),
                  // email input taker

                  TextFormField(
                      controller: _emailCont,
                      validator: (value){
                          if(!value!.contains('@') || value.isEmpty){
                            return 'Please enter a valid email!';
                          }else return null;
                      },
                        style: const TextStyle(
                          fontSize: 22,
                          color: Colors.blue
                        ),
                        textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: const TextStyle(
                          fontSize: 22,
                          color: Colors.blue
                        ),
                        hintText: 'Enter your email...',
                        hintStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.grey
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            width: 2,
                            color: Colors.blue
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            width: 2,
                            color: Colors.blue
                          )
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            width:2,
                            color: Colors.red
                          )
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            width: 2,
                            color: Colors.red
                          )
                        )
                      )
                  ),
                  SizedBox(
                    height: 30
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    width: width,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: (){
                        if(_formKey.currentState!.validate()){
                            users.add(User(name: _nameCont.toString(), email: _emailCont.toString()));
                            _nameCont.clear();
                            _emailCont.clear();
                            print(users.length);
                        }
                      },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          backgroundColor: Colors.blue
                        ),
                      child: const Text("Submit", style:TextStyle(
                        fontSize: 22,
                        color: Colors.white
                      ))
                    )
                  ),

                ]
              )
            )
          ]
        )
      ))
    );
  }
}