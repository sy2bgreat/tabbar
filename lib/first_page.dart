import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List imgName = ["pikachu-1.jpg", "pikachu-2.jpg", "pikachu-3.jpg"];
  int currentImg = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(imgName[currentImg],
                style: TextStyle(
                  fontSize: 20.0,
                )),
            Image.asset(
              "images/${imgName[currentImg]}",
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      nextBtn();
                    });
                  },
                  child: const Text("Next"),
                ),
                const SizedBox(
                  width: 35.0,
                  height: 35.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      prevBtn();
                    });
                  },
                  child: const Text("Prev"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  nextBtn() {
    currentImg++;

    if (currentImg >= imgName.length) {
      currentImg = 0;
    }
  }

  prevBtn() {
    currentImg--;

    if (currentImg < 0) {
      currentImg = imgName.length - 1;
    }
  }
}
