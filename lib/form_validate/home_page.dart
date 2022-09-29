// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'view_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//formkey and emailvalidation variable
final _formkey = GlobalKey<FormState>();
final _emailValid = MultiValidator([
  EmailValidator(errorText: 'enter valid email'),
  RequiredValidator(errorText: 'Requred*')
]);

class _HomePageState extends State<HomePage> {
  //page_state change onpressed is called _submit method
  _submit() {
    final isvalid = _formkey.currentState!.validate();
    if (isvalid) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ViewPage()));
    }
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Form Validation"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  validator: RequiredValidator(errorText: 'Requred*')),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                validator: _emailValid,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      _submit();
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
