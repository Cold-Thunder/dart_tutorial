import 'dart:async';

import 'package:flutter/material.dart';
import 'package:widgets_use/utiles/methods.dart';

class UseSnackbar extends StatefulWidget {
  const UseSnackbar({super.key});

  @override
  State<UseSnackbar> createState() => _UseSnackbarState();
}

class _UseSnackbarState extends State<UseSnackbar> {
  final WidgetStatesController _stateController = WidgetStatesController();

  bool enable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Use SnackBar',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        leadingWidth: 25,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            // controlling multi clicking on showing snackbar
            ElevatedButton(
              style: !enable
                  ? ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                    )
                  : null,
              onPressed: () {
                // multiple click controller
                if (enable) {
                  Methods.snackBarMethod(context);
                  setState(() {
                    enable = false;
                  });
                  Timer(
                    Duration(seconds: 3),
                        () {
                      setState(
                            () {
                          enable = true;
                        },
                      );
                    },
                  );
                }
              },
              child: Text('Show Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
