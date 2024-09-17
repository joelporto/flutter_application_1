import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

class RegistrationScreen extends StatefulWidget {
  

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}



class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController _UsernameController = TextEditingController();
  final TextEditingController _LocationController = TextEditingController();
  final TextEditingController _Telephone = TextEditingController();
  final TextEditingController _PasswordController = TextEditingController();
  final TextEditingController _ConfirmPassword = TextEditingController();

 
  void _register(){
    String username = _UsernameController.text;
    String location = _LocationController.text;
    String telephone = _Telephone.text;
    String password = _PasswordController.text;
    String confirmPassword = _ConfirmPassword.text;

    if(password != confirmPassword){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Passwords do not match')),
      );
      return ;
    }
    if(username == ''){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Empty Username Field')),
      );
      return;
    }
      if(password == ''){
          ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Empty Password Field')),
      );
      return;
      }
    if(location == ''){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Empty Location Field')),
      );
      return;
    }
    if(telephone == ''){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Empty Telephone Field')),
      );
      return;
    }

    // back-end 
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Usuário $username registrado com sucesso!')),
    );
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
        TextFormField( 
          controller: _UsernameController,
          decoration: const InputDecoration(
          labelText: 'Username',
          hintText: 'text@gmail.com',
          border: OutlineInputBorder(),
          
          ), 
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: _PasswordController,
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Password',
            hintText: 'Abc1234',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: _ConfirmPassword,
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Confirm Password',
            hintText: 'Abc1234',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: _LocationController,
          decoration: const InputDecoration(
            labelText: 'Location',
            hintText: 'Brazil',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: _Telephone,
          decoration: const InputDecoration(
            labelText: 'Telephone',
            hintText: '(11)912345678',
            border: OutlineInputBorder(),
          ),
        ),
      
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
          child: TextButton(onPressed: _register ,
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