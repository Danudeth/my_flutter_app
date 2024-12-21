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
          body: Center(
            // child : Image.network('https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSaXYTlyWcEBs-yQ_ll_j43p-ySqRizPFM0Q_nb1UNF-MZJEwFnXthK4HGv9fIuvUcNVKFZ2bzH1ESf-BPLBzE6B5IasTeJHxaf-lXkdw'),
           child: Image.asset(
            'assets/gojo.webp',
            width: 300,
           ),
           // child: ElevatedButton(
            //   onPressed: () {
            //     print("Pressed");
            //   },
            //  child: Text("Press Me")
            //  ),
          ),
          floatingActionButton : FloatingActionButton(onPressed: (){
              print("Hello");
             })
        ));
  }
}
