import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EDate extends StatelessWidget {
  const EDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: Container(color: Colors.yellow, height: 20.0, width: 20.0,),
        ),
        leading: Text("Leading"),
        title: Text('EDate'),
        actions: [
          ElevatedButton(onPressed: (){print("check action");}, child: Icon(Icons.add)),
          ],
        flexibleSpace: Container(
          height: 50,
          width: 90,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.yellow],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            
          ),
        ),
      ),
      body: Column(
        children: [Text(DateFormat.EEEE().format(DateTime.now()),
          style: TextStyle(fontSize: 30),)
        ],
      ),
    );
  }
}