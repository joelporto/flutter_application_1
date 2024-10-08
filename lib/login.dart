
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _UsernameController = TextEditingController();
  final TextEditingController _PasswordController = TextEditingController();

  void _register(){
    String username = _UsernameController.text;
    String password = _PasswordController.text;
  }
  

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
          decoration: const BoxDecoration(
            color: Colors.tealAccent,
             borderRadius: BorderRadius.only(
            bottomRight: Radius.elliptical(80, 80)
            )
            ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Image.asset("logo.png"),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        TextFormField(
          controller: _UsernameController,
          validator: (username) {
            if(username == ''){
              ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Empty Location Field')),
            );
            }
            return null;
          } ,
          decoration: const InputDecoration(
            labelText: 'Username',
            hintText: 'Enter your Username',
            border: OutlineInputBorder()
          ),
        ),
         const SizedBox(
          height: 20,
        ),
        TextField(
          controller: _PasswordController,
          decoration: const InputDecoration(
            labelText: 'Password',
            hintText: 'Enter your Password',
            border: OutlineInputBorder()
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        Container(
          height: 60,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.tealAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(onPressed: _register,
           child: const Text(
            "Login",
            style: TextStyle(fontSize: 20,color: Colors.grey),
            ),
          ),
        ),

        const SizedBox(
          height: 10,
          ),
          RichText(
            text: TextSpan(
            children: [
              const TextSpan(
                text: "Don't have an account ? ",
                style: TextStyle(fontSize: 15, color: Colors.grey)
              ),
              TextSpan(
                text: "Register",
                style:
                    const TextStyle(fontSize: 15, color: Colors.orangeAccent),
                  recognizer:  TapGestureRecognizer()
                 ..onTap = () {
                  Navigator.of(context).pushNamed('/register');
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}



Widget inputStyle(String title, String hinTxt) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(40, 5, 20, 10),
    child: Row(
      children: [
        Text("$title :",
        style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3))
                ]),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.only(left: 10),
                  hintText: hinTxt
                  ),
            ),
          ),
        ),
      ],
    ),
  );
}
