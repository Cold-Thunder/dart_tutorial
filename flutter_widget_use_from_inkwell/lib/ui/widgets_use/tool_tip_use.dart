import 'package:flutter/material.dart';

class ToolTipUse extends StatelessWidget {
  const ToolTipUse({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: Text('ToolTip Use')),
      body: SizedBox(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Tooltip(
              margin: const EdgeInsets.only(top: 10),
              message: 'This example of tooltip',
              height: 30,
              showDuration: Duration(seconds: 1),
              waitDuration: Duration(seconds: 4),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5)
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Container(
                height: 60,
                width: 200,
                alignment: Alignment.center,
                color: Colors.blue,
                child: Text(
                  'Tool tip used',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
