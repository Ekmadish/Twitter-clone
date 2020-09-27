import 'package:Twitter_Clone/home_Page.dart';
import 'package:Twitter_Clone/login_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  NavigationPage({Key key}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  bool isSigned = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// ignore: dead_code
      body: isSigned == false ? Login() : HomePage(),
    );
  }
}
