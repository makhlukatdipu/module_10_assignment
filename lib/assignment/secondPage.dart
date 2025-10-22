import 'package:flutter/material.dart';

class secondPage extends StatelessWidget {
  const secondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exam'), backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text(
              'Thank You',
              style: Theme.of(
                context,
              ).textTheme.headlineLarge!.merge(TextStyle(color: Colors.black,fontSize: 50)),
            ),
          ]
        ),
      ),
    );
  }
}
