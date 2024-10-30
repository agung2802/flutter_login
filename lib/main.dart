import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:form_login/dashboard.dart';
import 'package:form_login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login()
    );
  }
  
}