
import 'package:flutter/material.dart';

class FlutterSwitch extends StatefulWidget {
  const FlutterSwitch({super.key});

  @override
  State<FlutterSwitch> createState() => _FlutterSwitchState();
}

class _FlutterSwitchState extends State<FlutterSwitch> {
  bool _dark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _dark ? Colors.black : Colors.white,
      appBar: AppBar(
        title: Text('Switch uses')
      ),
      body: Column(
        children: [
          Container(
            child: Switch(
              value: _dark,
              onChanged: (value){
                setState((){
                  _dark = value;
                });
              },
              inactiveThumbColor: Colors.grey,
              inactiveTrackColor: Colors.blue,
              thumbColor: WidgetStatePropertyAll(Colors.red),
              thumbIcon: WidgetStatePropertyAll(Icon(Icons.add, size: 22, color:Colors.white)),
              activeTrackColor: Colors.yellow,
              trackOutlineColor: WidgetStatePropertyAll(Colors.green),
              trackOutlineWidth: WidgetStatePropertyAll(5)
            )
          )
        ],
      )
    );
  }
}
