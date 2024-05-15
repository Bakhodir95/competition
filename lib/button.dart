import 'package:flutter/material.dart';

class StartButton {
  static keyButtons() {
    return Column(
      children: [
        TextButton(
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              width: 200,
              height: 70,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 5, 56, 54)),
              child: const Text(
                "NEW GAME",
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            )),
        TextButton(
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              width: 200,
              height: 70,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 5, 56, 54)),
              child: const Text(
                "RESET GAME",
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ))
      ],
    );
  }
}
