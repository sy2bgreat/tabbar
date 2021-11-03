import 'package:flutter/material.dart';
import 'animals_item.dart';

class SecPage extends StatefulWidget {
  final List<Animals> list;

  const SecPage({Key? key, required this.list}) : super(key: key);

  @override
  _SecPageState createState() => _SecPageState();
}

class _SecPageState extends State<SecPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
