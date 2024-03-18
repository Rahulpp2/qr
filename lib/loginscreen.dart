import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginp/qr.dart';
import 'package:loginp/regscreen.dart';

import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _rolNoController = TextEditingController();
  final _passwordController = TextEditingController();
  Future<void> login() async{
    Uri url = Uri.parse('https://scnner-web.onrender.com/api/login');
    var response = await http.post(url,
        headers: <String, String>{
      'Content-Type' : 'application/json; charset=UTF-8',
    },
        body: jsonEncode({'rollno': _rolNoController.text, 'password': _passwordController.text}));
    var data = jsonDecode(response.body);
    print(data['message']);
    if (response.statusCode == 200) {
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => const qr()),
      );
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('login field')));

    }

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.teal,
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 600,
                    child: TextField(
                      controller: _rolNoController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your roll no.',
                        hintStyle: TextStyle(color: Colors.white60),
                      ),
                    ),
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
                      TextButton(onPressed: (){
                        login();
                      },
                      style: TextButton.styleFrom(backgroundColor: Colors.red),
                          child: Text('Login',style: TextStyle(color: Colors.white60,fontSize: 20),),),
                      SizedBox(height: 30),
                      TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => const regiscrn()),
                        );
                      },
                        style: TextButton.styleFrom(backgroundColor: Colors.red),
                        child: Text('Not login?',style: TextStyle(color: Colors.white60,fontSize: 20),),)
                ]))));
  }
}
