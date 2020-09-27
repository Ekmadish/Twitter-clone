import 'package:Twitter_Clone/utils/variables.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to flutter clone",
              style: mystyle(30, Colors.white, FontWeight.w600),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Login",
              style: mystyle(30, Colors.white, FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 60,
              height: 60,
              child: Image.asset('images/logo.png'),
            )
          ],
        ),
      ),
    );
  }
}
