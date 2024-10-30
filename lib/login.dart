import 'package:flutter/material.dart';
import 'package:form_login/dashboard.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username="";
  String password="";
  var user = [
      {
      "username": "admin",
      "password": "admin",
      },
      {
      "username": "user",
      "password": "user",
      },
      {
      "username": "Agung",
      "password": "Rizki",
      }
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        const Text("Login Screen", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(20.0), 
          child: TextField(
            decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Username',
            ),
            onChanged: (value) => {
              setState(() {
                username = value;
              }
              )
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0), 
          child: TextField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
            ),
            onChanged: (value) => {
              setState(() {
                password = value;
              }
              )
            },
          ),
        ),
        
        ElevatedButton(onPressed: login,
        child: const Text("Login")),          
      ]),
    );
  }

  login(){
    if (user.any((user) => user['username'] == username)) {
        if (user.any((element) => element['username'] == username && element['password'] == password,)) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Dashboard(username: username)));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Wrong password or username"),
            ),
          );
        }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("User not found"),
        ),
      );
    }
  }
  
}