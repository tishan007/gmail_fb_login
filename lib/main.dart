import 'package:flutter/material.dart';

import 'login_page.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //resizeToAvoidBottomPadding: false,      //for web part it should be commented
        appBar: AppBar(
          centerTitle: true,
          title: Text("Login"),
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
          //child: PopUpRadioListTile(),
          child: LoginPage(),
        ),
      ),
    );
  }




}

