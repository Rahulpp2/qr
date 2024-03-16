import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class regiscrn extends StatefulWidget {
  const regiscrn({Key? key}) : super(key: key);

  @override
  State<regiscrn> createState() => _regiscrnState();
}

class _regiscrnState extends State<regiscrn> {
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
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(color: Colors.white60),
                )),
              ),
              SizedBox(height: 30),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(backgroundColor: Colors.white60),
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white60, fontSize: 30),
                ),
              )
            ]))));
  }
}
