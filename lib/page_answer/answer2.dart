// answer2 Week3 Lab
import 'package:flutter/material.dart';

void main() {
  runApp(const Answer2());
}

class Answer2 extends StatelessWidget {
  const Answer2({super.key});

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
              title: const Text('Social Media Post'),
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
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue,
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text('Danudeth Ninkuha',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 16)),
                          ),
                          Container(
                            child: Text('5 minutes ago',style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  width: double.infinity,
                  height: 200,
                  color: Colors.blueGrey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 1),
                    ElevatedButton(onPressed: () {}, child: Text('Like')),
                    ElevatedButton(onPressed: () {}, child: Text('Comment')),
                    ElevatedButton(onPressed: () {}, child: Text('Share')),
                    SizedBox(width: 1),
                  ],
                ),
                SizedBox(height: 10),
              ],
            )));
  }
}
