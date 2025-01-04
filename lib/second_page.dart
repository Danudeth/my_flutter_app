import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String message;
  const SecondPage({super.key, required this.message});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Second Page ($message)'),
          backgroundColor: Colors.orange,
          automaticallyImplyLeading: false),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('< Go Back'),
        ),
      ),
    );
  }
}
