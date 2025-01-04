import 'package:flutter/material.dart';

void main() {
  runApp(const Answer3());
}

class Answer3 extends StatelessWidget {
  const Answer3({super.key});

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
            title: const Text('Product Layout'),
            leading: ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, 
            style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              padding: EdgeInsets.zero,
              iconColor: Colors.black,
            ),
            child: Icon(Icons.arrow_back_ios_new_rounded)),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text('Category: Christmas'),
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: Image.asset(
                              'assets/snow-globe.png',
                              width: 150,
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                child: Text(
                                  'Snow Globe 1',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Beautiful 1',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: Image.asset(
                              'assets/snow-globe.png',
                              width: 150,
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                child: Text(
                                  'Snow Globe 3',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Beautiful 3',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: Image.asset(
                              'assets/snow-globe.png',
                              width: 150,
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                child: Text(
                                  'Snow Globe 2',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Beautiful 2',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: Image.asset(
                              'assets/snow-globe.png',
                              width: 150,
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                child: Text(
                                  'Snow Globe 4',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Beautiful 4',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
