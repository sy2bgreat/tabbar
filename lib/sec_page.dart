import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class SecPage extends StatefulWidget {
  const SecPage({Key? key}) : super(key: key);

  @override
  _SecPageState createState() => _SecPageState();
}

class _SecPageState extends State<SecPage> {
  List imgName = ["pikachu-1.jpg", "pikachu-2.jpg", "pikachu-3.jpg"];
  int currentImg = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SimpleGestureDetector(
        onHorizontalSwipe: _onHorizontalSwipe,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              imgName[currentImg],
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Image.asset(
              "images/${imgName[currentImg]}",
              fit: BoxFit.contain,
            )
          ],
        )),
      ),
    );
  }

  _onHorizontalSwipe(SwipeDirection direction) {
    setState(() {
      if (direction == SwipeDirection.left) {
        currentImg--;
        if (currentImg < 0) {
          currentImg = imgName.length - 1;
        }
      } else {
        currentImg++;
        if (currentImg >= imgName.length) {
          currentImg = 0;
        }
      }
    });
  }
}
