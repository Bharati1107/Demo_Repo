import 'package:flutter/material.dart';
import 'package:navigation_demo/pages/homepage.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Navigation Of Screen",
      home: HomePage(),
    ),
  );
}
