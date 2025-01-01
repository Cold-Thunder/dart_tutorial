import 'package:flutter/material.dart';

class UseCheckCheckboxlisttile extends StatefulWidget {
  const UseCheckCheckboxlisttile({super.key});

  @override
  State<UseCheckCheckboxlisttile> createState() =>
      _UseCheckCheckboxlisttileState();
}

class _UseCheckCheckboxlisttileState extends State<UseCheckCheckboxlisttile> {
  bool isPresent = false;
  bool isStudent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkbox and CheckboxTile')),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                    value: isPresent,
                    activeColor: Colors.blue,
                    checkColor: Colors.yellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    side: BorderSide(width: 2, color: Colors.red),
                    onChanged: (value) {
                      setState(() {
                        isPresent = value!;
                      });
                    }),
                Text('Is he present in class?')
              ],
            ),

            CheckboxListTile(
                value: isStudent,
                onChanged: (value){
                    setState(() {
                      isStudent = value!;
                    });
                },
              activeColor: Colors.red,
              checkColor: Colors.lightBlueAccent,
              checkboxShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              ),
              side: BorderSide(
                width: 2,
                color: Colors.orange,
              ),
              title: Text('Student'),
              subtitle: Text('I am studying in Honors 2 year'),
            )
          ],
        ),
      ),
    );
  }
}
