// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'secondpage.dart';
import 'homepage.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Demo Page")),
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
              "Welcome,On aadrash sir page!!",
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(
              height: 20.0,
              width: 20.0,
            ),
            Row(
              children: [
                const Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 50, horizontal: 40)),
                RaisedButton(
                  child: const Text("Next"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SecondPage()),
                    );
                  },
                ),
                const SizedBox(
                  width: 30.0,
                ),
                RaisedButton(
                  child: const Text("Back"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
