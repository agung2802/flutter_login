import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class MappingList extends StatelessWidget {
  MappingList({super.key});
  var faker = new Faker();

  final List<Map<String, dynamic>> data = [
    {
      'name': 'John',
      'age': 30,
      'favoriteColor': [Colors.blue, Colors.blue, Colors.blue],
    },
    {
      'name': 'Jack',
      'age': 30,
      'favoriteColor': [Colors.red, Colors.red, Colors.red]
    },
    {
      'name': 'James',
      'age': 30,
      'favoriteColor': [Colors.green, Colors.green, Colors.green]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapping List'),
      ),
      body: ListView(
        children: data
            .map((e) {
              List colors = e['favoriteColor'];
              return Card(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(faker.image.image()),
                            ),
                            Column(
                              children: [
                                Text(e['name']),
                                Text(e['age'].toString()),
                              ]
                            )
                          ],
                        )
                      ]
                    ),
                    Row(
                      children: colors.map(
                        (color) => 
                        Container(
                          height: 30,
                          width: 30,
                          color: color,
                          margin: const EdgeInsets.all(5),
                        ),
                      ).toList()
                    )
                  ]
                )
              );
            }
              
              
            )
            .toList(),
      )
    );
  }
}