import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LogIn UI',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.lightGreen,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 0.25),
                  boxShadow: [
                    BoxShadow(
                        color: Theme.of(context).accentColor,
                        blurRadius: 20.0,
                        spreadRadius: 3)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              margin: EdgeInsets.all(10),
              width: 300,
              height: 290,
              alignment: Alignment.center,
              child: Card(
                  child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(0),
                  ),
                  Container(
                    //color: Colors.red,
                    height: 80,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: TextField(
                        decoration: InputDecoration(
                            //prefixIcon: Icons.account_circle_outlined,
                            prefixIcon: Icon(Icons.account_circle_outlined),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            hintText: 'Username')),
                  ),
                  Container(
                    //color: Colors.green,
                    height: 80,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key_outlined),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        hintText: 'Password',
                      ),
                      obscureText: true,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    alignment: Alignment.topRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(blurRadius: 2)],
                      color: Theme.of(context).primaryColor,
                    ),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: ButtonTheme(
                      minWidth: 250,
                      child: FlatButton(
                        padding: EdgeInsets.only(top: 0),
                        child: Text(
                          'Log In',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Don\'t have account?',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Container(
                        child: FlatButton(
                          child: Text(
                            'SIGN UP',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        signUp()));
                          },
                        ),
                      )
                    ],
                  ),
                ],
              )),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
              ),
              Container(
                alignment: Alignment.bottomRight,
                height: 1,
                width: 120,
                color: Colors.white,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'OR',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                height: 1,
                width: 120,
                color: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 50),
              )
            ],
          ),
          Column(
            children: [
              Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.indigo[700],
                  border: Border.all(color: Colors.black, width: 0.25),
                  boxShadow: [
                    BoxShadow(
                        color: Theme.of(context).accentColor,
                        blurRadius: 5.0,
                        spreadRadius: 0)
                  ],
                ),
                child: FlatButton(
                  minWidth: 250,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 40),
                        child: Text(
                          'f',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Login with Facebook',
                          style:
                              TextStyle(color: Colors.white, letterSpacing: 1),
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10),
              ),
              Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.red[600],
                  border: Border.all(color: Colors.black, width: 0.25),
                  boxShadow: [
                    BoxShadow(
                        color: Theme.of(context).accentColor,
                        blurRadius: 5.0,
                        spreadRadius: 0)
                  ],
                ),
                child: FlatButton(
                  minWidth: 250,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Icon(Icons.mail_outline),
                            padding: EdgeInsets.only(right: 22),
                          ),
                          Container(
                            child: Text(
                              'Login with Email',
                              style: TextStyle(
                                  color: Colors.white, letterSpacing: 1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
