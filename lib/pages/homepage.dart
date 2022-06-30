// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'firstpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print("back button pressed");
        return false;
      },
      child: Scaffold(
        appBar:
            AppBar(title: const Center(child: Text("Vivanet Employee List"))),
        body: Center(
            child: RaisedButton(
          child: const Text("List of Employees"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirstPage()),
            );
          },
        )),
      ),
    );
  }
}
