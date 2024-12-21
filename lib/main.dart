import 'package:flutter/material.dart';
import 'package:my_flutter_app/homepage.dart';

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
            title:
                const Text('Flutter Demo', 
                style: TextStyle(color: Colors.red)),
            leading: const Icon(Icons.add),
            backgroundColor: Colors.yellow,
          ),
          body: Container(
            color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 200,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  child: Text("Item 1"),
                ),
                Container(
                  color: Colors.orange,
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  child: Text("Item 2"),
                ),
                Container(
                  color: Colors.yellow,
                  width: 100,
                  height: 200,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  child: Text("Item 3"),
                ),
              ],
          ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("Hello");
            },
            child: const Icon(Icons.phone),
          ),
          
        ));
  }
}
