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
        home: const MyWidget());
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Widget Example'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter Value:"),
            Text('$counter',style: TextStyle(fontSize: 40)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    counter++;
                  });
                }, child: Icon(Icons.add)),
                SizedBox(width: 10),
                ElevatedButton(onPressed: (){
                  setState(() {
                    counter--;
                    if(counter<0) counter=0;
                  });
                }, child: Icon(Icons.remove)),
                SizedBox(width: 10),
                ElevatedButton(onPressed: (){
                  setState(() {
                    counter=0;
                  });
                }, child: Icon(Icons.restart_alt)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class GreetingWidget extends StatelessWidget {
  final String name;
  const GreetingWidget({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo App'),
        backgroundColor: Colors.red,
      ),
        body: Center(
            child: Text(
      'Hello, $name',
      style: const TextStyle(fontSize: 24),
    )));
  }
}
