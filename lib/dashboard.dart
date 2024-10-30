import 'package:flutter/material.dart';
import 'package:form_login/login.dart';

class Dashboard extends StatelessWidget {

  Dashboard({super.key, required this.username});

  final String username;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),  
      body: Center(
        child: Text('Hallo $username', style: TextStyle(fontSize: 30),),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
      }, child: Icon(Icons.logout),)
      ,
    );
  }
}