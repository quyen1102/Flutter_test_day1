import 'package:flutter/material.dart';

import 'common/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
        ),
        body: ListViewTest(
          message: 'helllo',
          myList: ['a', 'b'],
          updateCharacter: 'string',
          updateMode: 'UPPER',
        ),
      ),
    );
  }
}
