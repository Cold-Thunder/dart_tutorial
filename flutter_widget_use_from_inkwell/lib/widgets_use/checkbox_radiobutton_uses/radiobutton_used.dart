import 'package:flutter/material.dart';

enum Names{
  male,
  female,
  other
}

class RadiobuttonUsed extends StatefulWidget {
 RadiobuttonUsed({super.key});

  @override
  State<RadiobuttonUsed> createState() => _RadiobuttonUsedState();
}

class _RadiobuttonUsedState extends State<RadiobuttonUsed> {
  Names _globalValue = Names.female;

  void showValue(){
    print(_globalValue);
  }

  @override
  Widget build(BuildContext context) {

    showValue();
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button'),
      ),
      body: Container(
        child: Column(
          children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    RadioListTile(
                        value: Names.male,
                        groupValue: _globalValue,
                        onChanged: (value){
                          setState((){
                            _globalValue = value!;
                          });
                        },
                      fillColor: WidgetStatePropertyAll(Colors.red),
                      title: Text('Male', style: TextStyle(
                        color: _globalValue == Names.male ? Colors.white : Colors.black
                      )),
                      selectedTileColor: Colors.lightBlue,
                      selected: _globalValue == Names.male

                    ),
                    RadioListTile(
                      value: Names.female,
                      groupValue: _globalValue,
                      onChanged: (value){
                        setState(() {
                          _globalValue = value!;
                        });
                      },
                      title: Text('Female', style: TextStyle(
                        color: _globalValue == Names.female ? Colors.white : Colors.black
                      )),
                      fillColor: WidgetStatePropertyAll(Colors.red),
                      selectedTileColor: Colors.blue,
                      selected: _globalValue == Names.female
                    ),
                    RadioListTile(
                      value: Names.other,
                      groupValue: _globalValue,
                      onChanged: (value){
                        setState((){
                          _globalValue = value!;
                        });
                      },
                      title: Text('Other', style: TextStyle(
                        color: _globalValue == Names.other ? Colors.white : Colors.black
                      ),),
                      fillColor: WidgetStatePropertyAll(Colors.red,),
                      selectedTileColor: Colors.lightBlue,
                      selected: _globalValue == Names.other
                    ),

                  ],
                ),
              )
          ],
        )
      )
    );
  }
}
