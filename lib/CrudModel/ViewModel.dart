import 'dart:math';

import 'package:flutter/material.dart';
import 'Model.dart';

class Viewmodel extends StatefulWidget {
  const Viewmodel({super.key});

  @override
  State<Viewmodel> createState() => _ViewmodelState();
}

class _ViewmodelState extends State<Viewmodel> {
  List<Tab> listTab = [
    Tab(
      icon: Icon(Icons.directions_car),
    ),
    Tab(
      icon: Icon(Icons.directions_transit),
    ),
    Tab(
      icon: Icon(Icons.directions_bike),
    ),
  ];

  List data = ModelData().getData();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: listTab.length, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Viewmodel'),
          bottom:  TabBar(
            tabs: listTab,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(16.0),
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 4/3,
              children: data.map((e) {
                print(e);
                return Column(
                        children: [
                           Image(image: NetworkImage('https://picsum.photos/id/237/200/300')),
                          Text(e['productName']),
                          Text(e['price'].toString()),
                          Text(e['image']),
                        ],
                      );
              }).toList()
              )
          ],
        ),
      ) 
    
    );
  }
}