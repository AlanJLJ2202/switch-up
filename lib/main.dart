import 'package:flutter/material.dart';

import 'TabPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Switch-Up',
      theme: ThemeData(

        primarySwatch: Colors.lightGreen,

      ),
      //home: const MyHomePage(title: 'Switch-Up'),
      home: new TabPage(),
    );
  }
}


