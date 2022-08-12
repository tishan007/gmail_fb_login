import 'package:flutter/material.dart';
import 'package:gmail_fb_login/facebook_login.dart';
import 'package:gmail_fb_login/google_signin.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            ElevatedButton(
              onPressed: () {
                //GoogleSignIn().signIn();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return GoogleSignInDemo();
                  },
                ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/google-logo.png', width: 25, height: 25),
                  SizedBox(width: 10,),
                  Text("Continue With Google",),
                ],
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return FacebookLoginDemo();
                  },
                ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/facebook icon.png', width: 25, height: 25),
                  SizedBox(width: 10,),
                  Text("Continue With Facebook",),
                ],
              ),
            ),
            SizedBox(height: 43),
          ],
        ),
      ),
    );
  }
}
