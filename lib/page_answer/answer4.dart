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
            title: const Text('Profile Page'),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            children: [
              Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.blue,
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        child: Text(
                          'Danudeth Ninkuha',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      )
                    ],
                  )),
              Expanded(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                      ),
                      Icon(
                        Icons.email,
                        color: Colors.blue,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text('ninkuha_d@silpakorn.edu'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                      ),
                      Icon(
                        Icons.phone,
                        color: Colors.blue,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text('087-8011648'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                      ),
                      Icon(
                        Icons.pin_drop_rounded,
                        color: Colors.blue,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text('Ratchaburi, Thailand'),
                      ),
                    ],
                  ),
                ],
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Edit Profile')),
                  ElevatedButton(onPressed: () {}, child: Text('Logout')),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ));
  }
}
