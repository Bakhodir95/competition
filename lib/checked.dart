import 'package:flutter/material.dart';

class CheckedButton extends StatefulWidget {
  @override
  State<CheckedButton> createState() => _CheckedButtonState();
}

class _CheckedButtonState extends State<CheckedButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/0.jpg"))),
      ),
    );
  }
}
