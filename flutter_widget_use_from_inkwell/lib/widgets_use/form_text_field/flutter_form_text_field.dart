import 'package:flutter/material.dart';
import 'package:widgets_use/widgets_use/form_text_field/flutter_second_form.dart';

class FlutterFormTextField extends StatefulWidget {
  const FlutterFormTextField({super.key});

  @override
  State<FlutterFormTextField> createState() => _FlutterFormTextFieldState();
}

class _FlutterFormTextFieldState extends State<FlutterFormTextField> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final GlobalKey<FormFieldState> _emailKey = GlobalKey();
  final GlobalKey<FormFieldState> _nameKey = GlobalKey();

  final RegExp _emailReg =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

  final TextEditingController _nameCont = TextEditingController();
  final TextEditingController _emailCont = TextEditingController();
  final TextEditingController _passCont = TextEditingController();

  final FocusNode _nameNode = FocusNode();
  final FocusNode _emailNode = FocusNode();

  bool _nameTouch = false;
  bool _emailTouch = false;

  @override
  void initState() {
    super.initState();

    _nameNode.addListener(() {
      if (_nameNode.hasFocus) {
        setState(() {
          _nameTouch = true;
        });
      }
    });

    _emailNode.addListener(() {
      if (_emailNode.hasFocus) {
        setState(() {
          _emailTouch = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _nameNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Form Text Field')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          spacing: 20,
          children: [
            Text(
              'Form Validation',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            Form(
              key: _formKey,
              child: Column(spacing: 20, children: [
                // name section
                SizedBox(
                  height: 70,
                  child: TextFormField(
                    key: _nameKey,
                    controller: _nameCont,
                    focusNode: _nameNode,
                    autovalidateMode: AutovalidateMode.disabled,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Name can't be empty";
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) {
                      _nameKey.currentState?.validate();
                    },
                    decoration: InputDecoration(
                        hintText: 'Name',
                        hintStyle: TextStyle(fontSize: 18, color: Colors.blue),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1, color: Colors.blue),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(width: 1, color: Colors.blue)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(width: 1, color: Colors.red)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(width: 1, color: Colors.red))),
                  ),
                ),

                // email section
                SizedBox(
                  height: 70,
                  child: TextFormField(
                    key: _emailKey,
                    controller: _emailCont,
                    focusNode: _emailNode,
                    autovalidateMode: AutovalidateMode.disabled,
                    validator: (value) {
                      if (value!.isEmpty || !_emailReg.hasMatch(value)) {
                        return "Email is not valid";
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) {
                      if (value.isNotEmpty && _emailReg.hasMatch(value)) {
                        _emailKey.currentState?.validate();
                      }
                    },
                    decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(fontSize: 18, color: Colors.blue),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1, color: Colors.blue),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(width: 1, color: Colors.blue)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(width: 1, color: Colors.red)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(width: 1, color: Colors.red))),
                  ),
                ),
                // submit button
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      debugPrint('validated');
                    } else {
                      debugPrint('Not validate');
                    }
                  },
                  child: Text('Submit'),
                )
              ]),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FlutterSecondForm()
                    ),
                  );
                },
                child: Text('Next Form'))
          ],
        ),
      ),
    );
  }
}
