import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CPSU Project"),
        backgroundColor: Color.fromARGB(255, 106, 106, 204),
      ),
      body: Row(mainAxisAlignment:MainAxisAlignment.spaceAround, children: [
        Container(
          padding: const EdgeInsets.all(15),
          color: Colors.blueAccent,
          child: Text("Hello World!"),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          color: Colors.blueAccent,
          child: Text("Hello World!"),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          color: Colors.blueAccent,
          child: Text("Hello World!"),
        ),
      ],)
    );
  }
}