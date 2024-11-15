import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class EListTile extends StatelessWidget {
  EListTile({super.key});
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('EListTile'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ChatItems( 
              name: faker.person.name(),
              image: faker.image.image(),
              message: faker.lorem.sentence(),
              date: faker.date.dateTime().toString(),);
          },
        )
      ),
    );
  }
}

class ChatItems extends StatelessWidget {
  String name;
  String image;
  String message;
  String date;

  ChatItems({
    required this.name, 
    required this.image,
    required this.message,
    required this.date,
  });
  

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(image),
      ),
      title: Text(name),
      subtitle: Text(message),
      trailing: Text(date),
    );
  }
}