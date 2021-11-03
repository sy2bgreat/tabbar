import 'package:flutter/material.dart';
import 'package:tapbar_app/sec_page.dart';
import 'animals_item.dart';
import 'fir_page.dart';

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
  //상속 받아서 탭탭바
  late TabController controller;
  List<Animals> animalList = [];

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);

    animalList.add(
      Animals(
          animalName: "Bee",
          kind: "insect",
          imagePath: "images/bee.png",
          flyExist: true),
    );
    animalList.add(
      Animals(
          animalName: "Cat",
          kind: "mammal",
          imagePath: "images/cat.png",
          flyExist: false),
    );
    animalList.add(
      Animals(
          animalName: "Cow",
          kind: "mammal",
          imagePath: "images/cow.png",
          flyExist: false),
    );
    animalList.add(
      Animals(
          animalName: "Dog",
          kind: "mammal",
          imagePath: "images/dog.png",
          flyExist: false),
    );
    animalList.add(
      Animals(
          animalName: "Fox",
          kind: "mammal",
          imagePath: "images/fox.png",
          flyExist: false),
    );
    animalList.add(
      Animals(
          animalName: "Monkey",
          kind: "primate",
          imagePath: "images/monkey.png",
          flyExist: false),
    );
    animalList.add(
      Animals(
          animalName: "pig",
          kind: "mammal",
          imagePath: "images/pig.png",
          flyExist: false),
    );
    animalList.add(
      Animals(
          animalName: "wolf",
          kind: "mammal",
          imagePath: "images/wolf.png",
          flyExist: false),
    );
  } //data =>initstate

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List View Animals Test")),
      body: TabBarView(
        controller: controller,
        children: [
          FirstPage(
            list: animalList,
          ),
          SecPage(
            list: animalList,
          ),
        ],
      ),
      bottomNavigationBar: TabBar(
        labelColor: Colors.blueAccent,
        controller: controller,
        tabs: const [
          Tab(
            icon: Icon(Icons.looks_one, color: Colors.purple),
          ),
          Tab(
            icon: Icon(Icons.looks_two, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
