import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class packages extends StatelessWidget {
  final String img, title, day, night, price;
  const packages({
    super.key,
    required this.img,
    required this.title,
    required this.day,
    required this.night,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 5.h),
      child: Card(
        margin: EdgeInsets.zero,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.r),
                  bottomLeft: Radius.circular(15.r),
                ),
                child: Image.network(
                  img,
                  height: 140.h,
                  width: 140.w,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 8.w),

              Padding(
                padding: EdgeInsets.all(5.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                      ),
                    ),

                    SizedBox(height: 4.h),

                    Row(
                      children: [
                        Icon(Icons.timer_sharp, size: 20.h),
                        Text(
                          ' $night night * $day day',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 15.h),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          price,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                            color: Colors.blue,
                          ),
                        ),

                        SizedBox(width: 55.w,),
                       ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Book Now',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
