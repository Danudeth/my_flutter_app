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
            child: Row(
              children: [
                // Expanded(
                  // flex: 1,
                  Container(
                    color: Colors.blue,
                    height: 100,
                    width: 50,
                  ),
                // ),
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.red,
                    height: 100,
                  ),
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
