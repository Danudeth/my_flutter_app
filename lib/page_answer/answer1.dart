import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Grid Layout'),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            children: [
              SizedBox(width: 20, height: 20),
              Row(
                children: [
                  SizedBox(width: 20, height: 20),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  SizedBox(width: 20, height: 20),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  ),
                  SizedBox(width: 20, height: 20),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 20, height: 20),
                ],
              ),
              SizedBox(width: 20, height: 20),
              Row(
                children: [
                  SizedBox(width: 20, height: 20),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 20, height: 20),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.purple,
                  ),
                  SizedBox(width: 20, height: 20),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                  SizedBox(width: 20, height: 20),
                ],
              )
            ],
          ),
        ));
  }
}
