import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class destinations extends StatelessWidget {
  final String img, title;
  const destinations({super.key, required this.img, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      width: 180.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: NetworkImage(img),
        fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.all(8.r),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
