import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginp/qr.dart';
import 'package:loginp/regscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                        decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(color: Colors.white60),
                    )),
                  ),
                      SizedBox(height: 30),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => const qr()),
                        );
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
