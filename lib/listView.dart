import 'package:flutter/material.dart';

class EListView extends StatelessWidget {
  List<Color> color = [Colors.green, Colors.blue, Colors.red, Colors.yellow];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('EListView'),
      ),  
      body: Center(
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
                height: (index+1) * 100,
                color: color[index],
                child: Center(
                  child: Text('$index'),
                ),
            );
          }),
      ),
    );
  }
}