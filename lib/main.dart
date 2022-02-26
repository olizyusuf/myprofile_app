import 'package:flutter/material.dart';
import 'package:myprofile/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(brightness: Brightness.light, primaryColor: Colors.blue),
    title: 'olizyusuf.github.com',
    home: Home(),
  ));
}
