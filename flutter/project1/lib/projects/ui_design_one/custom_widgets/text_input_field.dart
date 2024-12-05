import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextInputFieldForUse extends StatelessWidget{
  TextEditingController _textCont = TextEditingController();

  TextInputFieldForUse({required TextEditingController textCont}): _textCont = textCont;

  @override
  Widget build(BuildContext context){
    return TextField(
      controller: _textCont,
      cursorColor: Colors.grey,
      cursorHeight: 22,
      textAlignVertical: TextAlignVertical.center,
      style: const TextStyle(
        fontSize: 22,
        color: Colors.grey,
      ),
      decoration: InputDecoration(
        filled: true,
          fillColor: Colors.grey[100],
          labelText: 'Search for Job',
          labelStyle: const TextStyle(
            fontSize: 22,
            color: Colors.grey
          ),
        prefixIcon:const Icon(Icons.search_outlined, size: 28, color: Colors.grey),
        suffixIcon:IconButton(
          icon: const Icon(Icons.tune_outlined, size: 28, color: Colors.grey),
          onPressed: (){
            print('I am searching');
          }
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.transparent
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.transparent,
          )
        ),
      )
    );
  }
}