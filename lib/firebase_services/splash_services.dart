//import 'package:firebase/ui/auth/login_screen.dart';
import 'package:firebase/ui/auth/login_screen.dart';
import 'package:firebase/ui/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase/ui/auth/signup_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => (FirebaseAuth.instance.currentUser != null)
                ? HomeScreen()
                : LoginScreen(),
          ));
    });
  }
}
