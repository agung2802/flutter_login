import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:form_login/CrudModel/ViewModel.dart';
import 'package:form_login/EDate.dart';
import 'package:form_login/EImages.dart';
import 'package:form_login/ETabBar.dart';
import 'package:form_login/MappingList.dart';
import 'package:form_login/dashboard.dart';
import 'package:form_login/eListTile.dart';
import 'package:form_login/listView.dart';
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
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ETabBar(),
      initialRoute: '/login',
      routes: {
        '/login': (context) => Login(),
        '/EDate': (context) => EDate(),
        '/EImages': (context) => EImages(),
        '/ETabBar': (context) => ETabBar(),
        '/MappingList': (context) => MappingList(),
        Dashboard.routeName: (context) => Dashboard( 
          username: ModalRoute.of(context)!.settings.arguments as String,),
        '/eListTile': (context) => EListTile(),
        '/listView': (context) => ListView(),
        '/viewModel': (context) => Viewmodel(),
      },
    );
  }
  
}