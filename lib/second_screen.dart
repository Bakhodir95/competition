import 'package:competition/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondScreen extends StatefulWidget {
  final String userName;
  final String userSelection;

  SecondScreen({required this.userName, required this.userSelection});

  @override
  State<SecondScreen> createState() =>
      _SecondScreenState(userName: userName, userSelection: userSelection);
}

class _SecondScreenState extends State<SecondScreen> {
  final String userName;
  final String userSelection;

  _SecondScreenState({required this.userName, required this.userSelection});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        width: double.infinity,
        decoration: BoxDecoration(color: Color.fromARGB(255, 13, 151, 107)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome $userName",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Your position is $userSelection",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 400,
              child: Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 0; i < 9; i++)
                      InkWell(
                        onTap: () {},
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          width: 50,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(),
                              image: DecorationImage(
                                  image: AssetImage(
                                    "images/0.jpg",
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            StartButton.keyButtons(),
          ],
        ),
      ),
    );
  }
}
