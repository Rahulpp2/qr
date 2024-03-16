import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

import 'loginscreen.dart';


class regiscrn extends StatefulWidget {
  const regiscrn({Key? key}) : super(key: key);

  @override
  State<regiscrn> createState() => _regiscrnState();
}

class _regiscrnState extends State<regiscrn> {


  final _rolNoController = TextEditingController();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool loading=false;

  Future<void> regiscrn() async {
    Uri uri = Uri.parse('url');
    var response = await http.post(uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode({
          'name': _nameController.text,
          'email': _emailController.text,
          'rollno': _rolNoController.text,
          'password': _passwordController.text
        }));
    var data = jsonDecode(response.body);

    print(data['message']);
    if (response.statusCode == 200) {
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => const LoginScreen ()),
      );
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Registation field')));

    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.teal,
            body: Center(
                child: Column(children: [
              Text(
                'Registration',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              SizedBox(height: 30),
              Container(
                  width: 600,
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your name',
                      hintStyle: TextStyle(color: Colors.white60),
                    ),
                  )),
              SizedBox(height: 30),
              Container(
                width: 600,
                child: TextField(
                  controller: _rolNoController,
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your roll no',
                  hintStyle: TextStyle(color: Colors.white60),
                )),
              ),
              SizedBox(height: 30),
              Container(
                width: 600,
                child: TextField(
                  controller: _emailController,
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(color: Colors.white60),
                )),
              ),
              SizedBox(height: 30),
              Container(
                width: 600,
                child: TextField(
                  controller: _passwordController,
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(color: Colors.white60),
                )),
              ),
              SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  regiscrn();
                },
                style: TextButton.styleFrom(backgroundColor: Colors.white60),
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white60, fontSize: 30),
                ),
              )
            ]))));
  }
}
