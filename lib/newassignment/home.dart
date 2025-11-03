import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:module_10_assignment/newassignment/widget/destinations.dart';
import 'package:module_10_assignment/newassignment/widget/packages.dart';

class HomeWork extends StatelessWidget {
  const HomeWork({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String,String>> packagesElements=[
      //1
      {
        'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR86NLkNiBiuQsZa9RtuPR6ECVjrsKBI2g57g&s',
        'title':'Romantic Paris Getaway',
        'day':'4',
        'night':'3',
        'price':'\$749'
      },

      //2
      {
        'img':'https://balistarisland.com/wp-content/uploads/2016/05/baliadventuretoursrafting6-1024x683.jpg',
        'title':'Bali Adventure Tour',
        'day':'3',
        'night':'2',
        'price':'\$549'
      },

      //3
      {
        'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwsHyx3Y3IgwBfBMx9vVgv5loDiFQhNc5bVw&s',
        'title':'Nepal Tour',
        'day':'2',
        'night':'1',
        'price':'\$450'
      },

      //4
      {
        'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnvx8L2gf_lXZzlvai35zovNQLFmmvuIszBw&s',
        'title':'Maldive Tour',
        'day':'3',
        'night':'2',
        'price':'\$550'
      },
    ];
    final List<Map<String,String>> destinationsElements = [
      //1
      {
        'img':
        'https://media.istockphoto.com/id/635758088/photo/sunrise-at-the-eiffel-tower-in-paris-along-the-seine.jpg?s=612x612&w=0&k=20&c=rdy3aU1CDyh66mPyR5AAc1yJ0yEameR_v2vOXp2uuMM=',
        'title': 'Paris',
          },
      //2
      {
        'img':
        'https://images.goway.com/production/styles/wide/s3/hero/iStock-538010535.jpg.webp?VersionId=Kob.m8kBt6OWLINN7diTwpKdj4CuWJgb&itok=GFxBoyIy',
        'title': 'Maldives',
      },
      //3
      {
        'img':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUPngnbIeVrijPwuMOboFGIdabc9DhqZJj6A&s',
        'title': 'Dubai',
      },
      //4
      {
        'img':
        'https://cdn.audleytravel.com/2478/1770/79/16027396-pura-ulun-danu-bratan-bali.jpg',
        'title': 'Bali',
      },
    ];
    return Scaffold(
      //appBar: AppBar(),
      backgroundColor: Colors.white50,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 250.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://i0.wp.com/picjumbo.com/wp-content/uploads/calming-nature-wallpaper-free-image.jpeg?w=600&quality=80',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 20.w,
                  bottom: 80.h,
                  child: Text(
                    'Explore The World',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  left: 20.w,
                  right: 60.w,
                  bottom: 20.h,
                  child: Container(
                    alignment: Alignment.center,
                    height: 60.h,
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hint: Text('Search Destination'),
                        hintStyle: TextStyle(fontSize: 16.sp, color: Colors.grey),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 22.sp,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20.h),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Text(
                'Top Destinations',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.sp),
              ),
            ),

            // Padding(
            //   padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
            //   child: Column(
            //     children: [
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           destinations(
            //             img:
            //                 'https://media.istockphoto.com/id/635758088/photo/sunrise-at-the-eiffel-tower-in-paris-along-the-seine.jpg?s=612x612&w=0&k=20&c=rdy3aU1CDyh66mPyR5AAc1yJ0yEameR_v2vOXp2uuMM=',
            //             title: 'Paris',
            //           ),
            //           destinations(
            //             img:
            //                 'https://images.goway.com/production/styles/wide/s3/hero/iStock-538010535.jpg.webp?VersionId=Kob.m8kBt6OWLINN7diTwpKdj4CuWJgb&itok=GFxBoyIy',
            //             title: 'Maldives',
            //           ),
            //         ],
            //       ),
            //       SizedBox(height: 15.h),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           destinations(
            //             img:
            //                 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUPngnbIeVrijPwuMOboFGIdabc9DhqZJj6A&s',
            //             title: 'Dubai',
            //           ),
            //           destinations(
            //             img:
            //                 'https://cdn.audleytravel.com/2478/1770/79/16027396-pura-ulun-danu-bratan-bali.jpg',
            //             title: 'Bali',
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 10.h),
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.h,
                    crossAxisSpacing: 12.w,
                  ),

                  itemCount: destinationsElements.length,
                  itemBuilder: (context,index){
                    final item = destinationsElements[index];
                    return

                      destinations(
                          img: item['img']!,
                          title: item['title']!,
                      );

                  })

            ),

            SizedBox(height: 10.h),

            // packages heading

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Text(
                'Trending Packages',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.sp),
              ),
            ),

            SizedBox(height: 10.h),
            // packages elements

            ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: packagesElements.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
                final item = packagesElements[index];
                return
                  packages(
                      img: item['img']!,
                      title: item['title']!,
                      day: item['day']!,
                      night: item['night']!,
                      price: item['price']!,
                  );
                }


            )

            // packages(img:'https://cdn.audleytravel.com/2478/1770/79/16027396-pura-ulun-danu-bratan-bali.jpg'
            //   , title: 'Romantic Paris Getaway', day: '4', night: '3', price: '\$720',),
          ],
        ),
      ),
    );
  }
}


