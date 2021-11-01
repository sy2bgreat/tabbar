import 'package:flutter/material.dart';
import 'package:tapbar_app/first_page.dart';
import 'package:tapbar_app/sec_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  //상속 받아서
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tab Bar Test")),
      body: TabBarView(
        controller: controller,
        children: const [
          FirstPage(),
          SecPage(),
        ],
      ),
      bottomNavigationBar: TabBar(
        labelColor: Colors.blueAccent,
        controller: controller,
        tabs: const [
          Tab(
            icon: Icon(Icons.looks_one, color: Colors.purple),
            text: "First",
          ),
          Tab(
            icon: Icon(Icons.looks_two, color: Colors.blue),
            text: "Sec",
          ),
        ],
      ),
    );
  }
}
