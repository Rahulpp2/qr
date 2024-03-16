import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqGK3diR3Zi-mnOXEaj-3ewmFyRYVxGzVzZw&s", height: 400, width: 300),
          Text(
            "cat",
            style: TextStyle(
              fontSize: 40,
              color: Colors.redAccent,
            ),
          ),
          Text(
            "pet",
            style: TextStyle(fontSize: 40, color: Colors.redAccent),
          ),
          Card(
              child: ListTile(
            leading: Icon(Icons.phone),
            title: Text("+91 74467476456"),
          )),
          Card(
            child: ListTile(
              leading: Icon(Icons.mail),
              title: Text("cat657@gmail.com"),
            ),
          ),
        ]),
      ),
    );
  }
}
