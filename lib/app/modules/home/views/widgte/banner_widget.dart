import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildBanner() {
  final List<String> imageUrls = [
    "assets/images/banner1.jpg",
    "assets/images/banner2_1.jpg",
    "assets/images/banner3.jpg"
  ];

  return SizedBox(
    height: 200.h,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return AspectRatio(
          aspectRatio: 2 / 3,
          child: Container(
            margin: EdgeInsets.only(right: 16.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              image: DecorationImage(
                image: AssetImage(imageUrls[index]),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    ),
  );
}
