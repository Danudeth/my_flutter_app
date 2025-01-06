// answer1 Week3 Lab
import 'package:flutter/material.dart';

void main() {
  runApp(const Answer1());
}

class Answer1 extends StatelessWidget {
  const Answer1({super.key});

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
            leading: ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              padding: EdgeInsets.zero,
              iconColor: Colors.black,
            ),
            child: Icon(Icons.arrow_back_ios_new_rounded)),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 20, height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                mainAxisAlignment: MainAxisAlignment.center,
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
