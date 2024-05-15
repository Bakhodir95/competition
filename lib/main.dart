import 'package:competition/button.dart';
import 'package:competition/first_screen.dart';
import 'package:competition/second_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(TicTacToe());
}

class TicTacToe extends StatefulWidget {
  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: FirstScreen());
  }
}
