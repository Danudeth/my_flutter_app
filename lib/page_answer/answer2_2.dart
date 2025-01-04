import 'package:flutter/material.dart';

void main() {
  runApp(const Answer2_2());
}

class Answer2_2 extends StatelessWidget {
  const Answer2_2({super.key});

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
        home: Feed());
  }
}

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Social Media Post'),
          backgroundColor: Colors.orange,
        ),
        body: ListView(
          children: [CardFeed()],
        ));
  }
}

class CardFeed extends StatelessWidget {
  const CardFeed({super.key, name});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
