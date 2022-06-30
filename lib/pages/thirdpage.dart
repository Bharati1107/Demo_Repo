// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'secondpage.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Third Demo Page")),
      body: Center(
        child: Column(
          children: [
            const Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 50, horizontal: 30)),
            Image.asset(
              "assets/profile.png",
              width: 150,
            ),
            const SizedBox(
              height: 20.0,
              width: 20.0,
            ),
            const Text(
              "Welcome,Kalpesh....!!",
              style:  TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(
              height: 20.0,
              width: 20.0,
            ),
            RaisedButton(
              child: const Text("Back"),
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondPage()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
