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
            title: const Text('Flutter Demo'), 
            backgroundColor: Colors.yellow,
          ),
        body: ListView.separated(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.add),
              title: Text('Item $index'),
              subtitle: Text('abcdefg'),
              trailing: const Icon(Icons.person),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              thickness: 2,
            );
          },
        ),
        ));
  }
}
