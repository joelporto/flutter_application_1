import 'package:flutter/material.dart';
import 'package:flutter_application_1/splash.dart';


import 'login.dart';
import 'register.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => const Splash(),
        '/login':(context) => const Login(),
        '/register':(context) => const Register()
      },
    )
  );
}