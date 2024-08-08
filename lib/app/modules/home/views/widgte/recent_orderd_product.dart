// ignore_for_file: prefer_const_constructors

import 'package:assignment_app/app/data/utility/appcolors.dart';
import 'package:assignment_app/app/modules/home/controllers/home_controller.dart';
import 'package:assignment_app/app/modules/home/views/style/produclist_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildHorizontalProductsList(HomeController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Recently Ordered',
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      SizedBox(height: 8.h),
      SizedBox(
        height: 200.h, // Adjust height based on the card design
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.productList.length,
          itemBuilder: (context, index) {
            final product = controller.productList[index];
            return Card(
              elevation: 3,
              margin: EdgeInsets.only(right: 16.w),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.r)),
                width: 120.w,
                padding: EdgeInsets.all(8.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      product.image,
                      width: 96.w,
                      height: 96.h,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      product.name,
                      style: productStyle(
                          AppColors.blackColor, 12.sp, FontWeight.bold),
                      maxLines: 1,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      product.weight!,
                      style: productStyle(
                          AppColors.greyColor, 10.sp, FontWeight.w500),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      product.price,
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.grey,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Spacer(),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle add to cart action
                        },
                        child: Text('Add to Cart'),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 8.h),
                          textStyle: TextStyle(
                            fontSize: 10.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ],
  );
}
