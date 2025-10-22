import 'package:flutter/material.dart';

import 'assignment/home.dart';
import 'assignment/secondPage.dart';
import 'assignment/widget/card_elements.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Exam',
        initialRoute: 'home',
        routes: {
          'home': (context) => Home(),
          'CardElements': (context) => CardElements(),
          'secondPage': (context) => secondPage(),
        }
    );
  }
}


