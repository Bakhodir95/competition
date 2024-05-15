import 'package:competition/button.dart';
import 'package:competition/second_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 30),
          width: double.infinity,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 13, 151, 107)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controller,
                decoration: const InputDecoration(
                    hintText: 'Enter only  Firstname',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _controller2,
                decoration: const InputDecoration(
                    hintText: 'Choose X or O',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ButtonStyle(elevation: MaterialStatePropertyAll(30)),
                onPressed: () {
                  if (_controller.text.trim().isNotEmpty &&
                      (_controller2.text.trim() == "X" ||
                          _controller2.text.trim() == "O")) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondScreen(
                            userName: _controller.text,
                            userSelection: _controller2.text,
                          ),
                        ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(
                        "X or O is not selected\nChoose one of them",
                        textAlign: TextAlign.center,
                      ),
                    ));
                  }
                },
                child: const Text(
                  'Start',
                  style: TextStyle(fontSize: 40, color: Colors.black45),
                ),
              ),
            ],
          )),
    );
  }
}
