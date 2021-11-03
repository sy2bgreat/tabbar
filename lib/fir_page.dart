import 'package:flutter/material.dart';
import 'animals_item.dart';

class FirstPage extends StatelessWidget {
  final List<Animals> list;

  const FirstPage({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListView.builder(
        itemBuilder: (context, position) {
          return Card(
              child: Row(
            children: [
              Image.asset(list[position].imagePath,
                  height: 100, width: 100, fit: BoxFit.contain),
              Text("   ${list[position].animalName}"),
            ],
          ));
        },
        itemCount: list.length,
      ),
    ));
  }
}
