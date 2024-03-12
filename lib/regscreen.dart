import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        child: Column(
        children: [
        Text(
        'Registration',
        style: TextStyle(color: Colors.white, fontSize: 40),
    ),

    ]))));
  }
}
