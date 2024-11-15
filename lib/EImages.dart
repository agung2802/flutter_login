import 'package:flutter/material.dart';

class EImages extends StatelessWidget {
  const EImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text("EImages"),
      ),  
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.blue,
          child: Image.asset('images/img24.jpg', fit: BoxFit.fitWidth,),
        )
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/dashboard', arguments: 'EImages'),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}