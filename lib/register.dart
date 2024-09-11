import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content(){
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.tealAccent,borderRadius: BorderRadius.only(bottomRight: Radius.elliptical(80, 80))),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Image.asset('logo.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Register",
              style: TextStyle(fontSize: 35,
              color: Colors.black
                ),
              ),
            ],
          ),
        ),
       const SizedBox(
          height: 40,
        ),
        inputStyle("Username", "test@gmail.com"),
        inputStyle("Password", "Abc1234"),
        inputStyle("Confirm Password", "Abc1234"),
        inputStyle("Location", "brazil"),
        inputStyle("Identification Number", "1000"),
        const SizedBox(
          height: 30,
        ),
        Container(
          height: 60,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.tealAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(onPressed: () {},
           child: const Text(
            "Register",
            style: TextStyle(fontSize: 20,color: Colors.grey),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 60,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.tealAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(onPressed: () {
            Navigator.of(context).pop();
          },
           child: const Text(
            "Back to Login",
            style: TextStyle(fontSize: 20,color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}