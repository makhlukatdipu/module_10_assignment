
import 'package:flutter/material.dart';
import 'package:module_10_assignment/assignment/widget/card_elements.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, String>> cardData = [
      //1
      {
        'img':
            'https://cdn.ostad.app/course/cover/2024-12-19T15-48-52.487Z-Full-Stack-Web-Development-with-Python,-Django-&-React.jpg',
        'title': 'Full Stack Web Development with Python, Django & React',
        'leftDay': '৫',
        'leftSits': '৬',
        'batch': '৮',
      },
      //2
      {
        'img':
            'https://cdn.ostad.app/course/cover/2024-12-17T11-35-19.890Z-Course%20Thumbnail%2012.jpg',
        'title': 'Full Stack Web Development with JavaScript (MERN)',
        'leftDay': '৩',
        'leftSits': '৫',
        'batch': '৩',
      },
      //3
      {
        'img':
            'https://cdn.ostad.app/course/cover/2024-12-18T15-24-44.114Z-Untitled-1%20(21).jpg',
        'title': 'SQA: Manual & Automated Testing',
        'leftDay': '৭',
        'leftSits': '৪',
        'batch': '৫',
      },
      //4
      {
        'img':
            'https://cdn.ostad.app/course/cover/2024-12-18T15-29-34.261Z-Untitled-1%20(23).jpg',
        'title': 'Full Stack Web Development with ASP.Net Core',
        'leftDay': '২',
        'leftSits': '৭',
        'batch': '৬',
      },
      //5
      {
        'img':
            'https://cdn.ostad.app/course/cover/2025-01-23T12-32-14.452Z-Untitled-1%20(1)%20(1).jpg',
        'title':
            'Mastering DevOps: From Fundamentals to Advanced PracticesMastering',
        'leftDay': '৪',
        'leftSits': '২',
        'batch': '৪',
      },
      //6
      {
        'img':
            'https://cdn.ostad.app/course/cover/2024-12-18T15-22-42.948Z-Flutter-Thumbnail.jpghttps://cdn.ostad.app/course/cover/2024-12-18T15-22-42.948Z-Flutter-Thumbnail.jpg',
        'title': 'App Development with Flutter',
        'leftDay': '১',
        'leftSits': '৯',
        'batch': '১',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Exam'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 5),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
           // mainAxisExtent: 320,
            childAspectRatio: 0.55,
          ),
          itemCount: 6,
          itemBuilder: (context, index) {
            final item = cardData[index];
            return
                homeElements(
                  img: item['img']!,
                  batch: item['batch']!,
                  title: item['title']!,
                  leftDay: item['leftDay']!,
                  leftSits: item['leftSits']!,
                );

          },
        ),
      ),
    );
  }
}
