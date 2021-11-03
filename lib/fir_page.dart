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
            return GestureDetector(
                child: Card(
                  child: Row(
                    children: [
                      Image.asset(list[position].imagePath,
                          height: 100, width: 100, fit: BoxFit.contain),
                      Text("   ${list[position].animalName}"),
                    ],
                  ),
                ),
                onTap: () {
                  _showDialog(
                      context, list[position].kind, list[position].animalName);
                });
          },
          itemCount: list.length,
        ),
      ),
    );
  }

  _showDialog(BuildContext context, String kind, String name) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(name),
          content: Text("이 동물은 품종이 $kind 입니다."),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("close"))
          ],
        );
      },
    );
  }
}
