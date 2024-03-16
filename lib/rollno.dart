import 'package:flutter/material.dart';
import 'package:loginp/profile.dart';
class roll extends StatefulWidget {
  const roll({super.key});

  @override
  State<roll> createState() => _rollState();
}

class _rollState extends State<roll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 600,
              child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your roll no',
                    hintStyle: TextStyle(color: Colors.teal),
                  )),
            ),
            SizedBox(height: 30),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const profile ()),
                );
              },
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child: Text(
                'Done',
                style: TextStyle(color: Colors.amber, fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
