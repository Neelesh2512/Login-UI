import 'package:flutter/material.dart';

class signUp extends StatefulWidget {
  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup page'),
      ),
      body: Center(
        child: Container(
          child: Text('signup page'),
        ),
      ),
    );
  }
}
