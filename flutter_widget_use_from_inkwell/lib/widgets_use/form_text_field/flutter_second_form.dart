
import 'package:flutter/material.dart';

class FlutterSecondForm extends StatefulWidget {
  const FlutterSecondForm({super.key});

  @override
  State<FlutterSecondForm> createState() => _FlutterSecondFormState();
}

class _FlutterSecondFormState extends State<FlutterSecondForm> {
  final TextEditingController _nameCont = TextEditingController();
  final TextEditingController _emailCont = TextEditingController();
  final TextEditingController _passCont = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();
  final GlobalKey<FormFieldState> _nameKey = GlobalKey();
  final GlobalKey<FormFieldState> _emailKey = GlobalKey();
  final GlobalKey<FormFieldState> _passKey = GlobalKey();

  final FocusNode _nameNode = FocusNode();
  final FocusNode _emailNode = FocusNode();
  final FocusNode _passNode = FocusNode();

  final RegExp _emailReg =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

  bool _showPass = true;

  void submitFunc(){
    if (_formKey.currentState!.validate()) {
      debugPrint('Validate');
      debugPrint('Name: ${_nameCont.text.toString()}');
      debugPrint('Email: ${_emailCont.text.toString()}');
    } else {
      debugPrint('Not Validated');
    }
  }

  @override
  void initState(){
    super.initState();

  }

  @override
  void dispose(){
    _nameNode.dispose();
    _emailNode.dispose();
    _passNode.dispose();

    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Second Form')),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 20,
            children: [
              Text(
                'Signup',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              Form(
                key: _formKey,
                child: Column(
                  spacing: 20,
                  children: [
                    // name section
                    SizedBox(
                      height: 70,
                      child: TextFormField(
                        key: _nameKey,
                        focusNode: _nameNode,
                        controller: _nameCont,
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
                          hintStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.blue),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.blue)),
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
                            borderSide: BorderSide(width: 1, color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                    // email section
                    SizedBox(
                      height: 70,
                      child: TextFormField(
                        key: _emailKey,
                        focusNode: _emailNode,
                        controller: _emailCont,
                        autovalidateMode: AutovalidateMode.disabled,
                        validator: (value) {
                          if (value!.isEmpty || !_emailReg.hasMatch(value)) {
                            return 'Email is not valid';
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {
                          if (_emailReg.hasMatch(value)) {
                            _emailKey.currentState?.validate();
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.blue),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.blue)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.blue)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.red,
                              )),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1, color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                    // password section
                    SizedBox(
                      child: TextFormField(
                        key: _passKey,
                        focusNode: _passNode,
                        controller: _passCont,
                        obscureText: _showPass,
                        autovalidateMode: AutovalidateMode.disabled,
                        validator: (value) {
                          if (value!.isEmpty || value.length < 6) {
                            return 'Password is not valid';
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {
                          if (value.length > 6) {
                            _passKey.currentState?.validate();
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.blue),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _showPass = !_showPass;
                                });
                              },
                              icon: Icon(
                                  _showPass
                                      ? Icons.remove_red_eye
                                      : Icons.lock_outline,
                                  size: 18,
                                  color: Colors.blue)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.blue)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(width: 1, color: Colors.blue)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.red,
                              )),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 1, color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                            submitFunc();
                        },
                        child: Text('Submit'))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
