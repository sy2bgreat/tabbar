import 'package:flutter/material.dart';

class SecPage extends StatefulWidget {
  const SecPage({Key? key}) : super(key: key);

  @override
  _SecPageState createState() => _SecPageState();
}

class _SecPageState extends State<SecPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("hi"),
      ),
    );
  }
}
