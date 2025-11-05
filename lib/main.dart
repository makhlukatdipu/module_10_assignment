import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'Todo/todo.dart';
import 'assignment/home.dart';
import 'assignment/secondPage.dart';
import 'assignment/widget/card_elements.dart';
import 'newassignment/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_ , child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Exam',
              initialRoute: 'HomeWork',
              routes: {
                'home': (context) => Home(),
                'CardElements': (context) => CardElements(),
                'secondPage': (context) => secondPage(),
                'HomeWork': (context) => HomeWork(),
                'todo': (context) => todo(),
              }
          );
        }
    );
  }
}


