// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
//import 'firstpage.dart';
import 'thirdpage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print("back button pressed and go to back");
        return true;
      },
      child: Scaffold(
        appBar: AppBar(title: const Text("Second Demo Page")),
        body: Center(
          child: Column(
            children: [
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30)),
              Image.asset(
                "assets/profile.png",
                width: 150,
              ),
              const SizedBox(
                height: 20.0,
                width: 20.0,
              ),
              const Text(
                "Hiiii Bharati.....!!!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
                width: 20.0,
              ),
              Row(
                children: [
                  const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 50, horizontal: 40)),
                  RaisedButton(
                    child: const Text("Next"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ThirdPage()),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  RaisedButton(
                    child: const Text("Back"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
